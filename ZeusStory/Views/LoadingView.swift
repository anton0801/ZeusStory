//
//  LoadingView.swift
//  ZeusStory
//
//  Created by Anton on 7/2/24.
//

import SwiftUI
import AdSupport
import AppTrackingTransparency
import AppsFlyerLib
import SwiftyJSON

struct LoadingView: View {
    
    @State var activeTransferToContent = false
    @State var activeTransferToContentF = false
    
    var body: some View {
        NavigationView {
            VStack {
                ProgressView()
                Text("Loading...")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .padding(.top)
                
                NavigationLink(destination: ContentV().navigationBarBackButtonHidden(true), isActive: $activeTransferToContent) {
                    EmptyView()
                }
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), isActive: $activeTransferToContentF) {
                    EmptyView()
                }
            }
            .background(
                Image("back_image")
                     .resizable()
                     .edgesIgnoringSafeArea(.all)
                     .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
            .onAppear {
                let idfa = UserDefaults.standard.string(forKey: "idfa_user_app") ?? ""
                let appsFlyerId = getAppsflyerId()
                let client_id = UserDefaults.standard.string(forKey: "client_id")
                sendResponse(idfa: idfa, appsflyerId: appsFlyerId, clientId: client_id)
            }
        }
        .preferredColorScheme(.dark)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    private func sendResponse(idfa: String, appsflyerId: String, clientId: String?) {
        // Адрес, куда будет отправлен запрос
        var link = "https://zeusplay.space/session/v3/343bd81d-7c59-4fbd-85fb-31bc12fb4942?idfa=\(idfa)&apps_flyer_id=\(appsflyerId)"
        if clientId != nil {
            link = "https://zeusplay.space/session/v3/343bd81d-7c59-4fbd-85fb-31bc12fb4942?idfa=\(idfa)&apps_flyer_id=\(appsflyerId)&client_id=\(clientId!)"
        }
        let url = URL(string: link)!
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
       do {
           let jsonString = UserDefaults.standard.string(forKey: "user_attr_data") ?? ""

           guard let jsonData = jsonString.data(using: .utf8) else {
               print("Failed to convert JSON string to data")
               return
           }
           let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
           let jsonDict = jsonObject as! [String: Any]
           let json = try JSON(data: jsonData)
           
           let postData = PostData(appsflyer: json, facebook_deeplink: UserDefaults.standard.string(forKey: "user_deferred_deeplink_facebook") ?? "")
           
           let jsonDataBody = try JSONEncoder().encode(postData)
           print("Send data jsonDataBody: \(jsonDataBody)")
           print("Send data postData: \(postData)")
           request.setValue("application/json", forHTTPHeaderField: "Content-Type")
           request.httpBody = jsonDataBody
       } catch {
           print("Error encoding data: \(error)")
           return
       }
        
        // Отправка запроса
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                if UserDefaults.standard.string(forKey: "l_save") != nil {
                    activeTransferToContent = true
                } else {
                    activeTransferToContentF = true
                }
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(PostDataResponse.self, from: data)
                UserDefaults.standard.set(decodedData.client_id, forKey: "client_id")
                UserDefaults.standard.set(decodedData.session_id, forKey: "session_id")
                
                var link2 = "https://app.njatrack.tech/technicalPostback/v1.0/postClientParams/\(decodedData.client_id)?onesignal_player_id=\(UserDefaults.standard.string(forKey: "onesignal_player_id"))"
                let url2 = URL(string: link2)!
                
                var request2 = URLRequest(url: url2)
                request2.httpMethod = "POST"
                URLSession.shared.dataTask(with: request2) { data, response, error in
                    guard let data = data, error == nil else {
                        print("Error: \(error?.localizedDescription ?? "Unknown error")")
                        return
                    }
                    
                }.resume()
                
                if decodedData.response == nil {
                    activeTransferToContentF = true
                } else {
                    UserDefaults.standard.set(decodedData.response, forKey: "l_save")
                    UserDefaults.standard.set(true, forKey: "keytoc")
                    activeTransferToContent = true
                }
            } catch {
                activeTransferToContentF = true
            }
        }.resume()
    }
    
    private func getAppsflyerId() -> String {
        return AppsFlyerLib.shared().getAppsFlyerUID()
    }
    
}

struct PostData: Codable {
    var appsflyer: JSON
    var facebook_deeplink: String
}

struct PostDataResponse: Decodable {
    var client_id: String
    var session_id: String
    var offer_id: Int?
    var response: String?
    var message: String?
    var product: String?
    var saved_url: Bool
}

extension Dictionary {
    func jsonData() throws -> Data {
        try JSONSerialization.data(withJSONObject: self)
    }
}

#Preview {
    LoadingView()
}
