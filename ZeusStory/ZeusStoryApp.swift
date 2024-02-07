//
//  ZeusStoryApp.swift
//  ZeusStory
//
//  Created by Anton on 2/2/24.
//

import SwiftUI
import AppsFlyerLib
import AppTrackingTransparency
import OneSignal
import FacebookCore
import AdSupport

class AppDelegate: NSObject, UIApplicationDelegate, AppsFlyerLibDelegate {
    
    @objc func didBecomeActiveNotification() {
        AppsFlyerLib.shared().start()
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { (status) in
                let idfa = ASIdentifierManager.shared().advertisingIdentifier.uuidString
                UserDefaults.standard.set(idfa, forKey: "idfa_user_app")
            }
        }
    }
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        AppLinkUtility.fetchDeferredAppLink { (url, error) in
                if let error = error {
                    print("Received error while fetching deferred app link %@", error)
                }
                if let url = url {
                    print(url)
                    UserDefaults.standard.set(url, forKey: "user_deferred_deeplink_facebook")
                }
            }
        
        if UserDefaults.standard.bool(forKey: "keytoc") {
//            OneSignal.Debug.setLogLevel(.LL_NONE)
//            OneSignal.initialize("2571d488-d6da-4d02-af75-f6b462985674", withLaunchOptions: launchOptions)
            
            OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)
            OneSignal.setLocationShared(false)
            OneSignal.initWithLaunchOptions(launchOptions)
            
            DispatchQueue.main.async {
                OneSignal.setAppId("2571d488-d6da-4d02-af75-f6b462985674")
            }
            
//            let externalId = UUID().uuidString
//            OneSignal.login(externalId)
            
            OneSignal.promptForPushNotifications(userResponse: { [weak self] accepted in
                 print("User accepted notification: \(accepted)")
                 let playerId = OneSignal.getDeviceState().userId
                 UserDefaults.standard.set(playerId, forKey: "onesignal_player_id")
                 // SecondScreenService.shared.sendAfterOneSignal(levelsCount: self?.levelsCount ?? "") { _ in }
             })
            
//            OneSignal.Notifications.requestPermission({ accepted in
//                print("User accepted notification: \(accepted)")
//                let playerId = OneSignal.getDeviceState().userId
//                UserDefaults.standard.set(playerId, forKey: "onesignal_player_id")
//                // SecondScreenService.shared.sendAfterOneSignal(levelsCount: self?.levelsCount ?? "") { _ in }
//            }, fallbackToSettings: true)
            
            OneSignal.setNotificationOpenedHandler { data in
                // Адрес, куда будет отправлен запрос
                var link = "https://app.njatrack.tech/technicalPostback/v1.0/postSessionParams/\(UserDefaults.standard.string(forKey: "session_id"))?push_data=\(data.jsonRepresentation())&from_push=true"
                let url = URL(string: link)!
                
                var request = URLRequest(url: url)
                request.httpMethod = "POST"
                // Отправка запроса
                URLSession.shared.dataTask(with: request) { data, response, error in
                    guard let data = data, error == nil else {
                        print("Error: \(error?.localizedDescription ?? "Unknown error")")
                        return
                    }
                    
                }.resume()
            }
        }
        
        AppsFlyerLib.shared().appsFlyerDevKey = "L7MoG3oFAQxaFJMMLb3XCk"
        AppsFlyerLib.shared().appleAppID = "6477488410"
        AppsFlyerLib.shared().isDebug = false // Установите в false в релизной версии
        AppsFlyerLib.shared().delegate = self
        AppsFlyerLib.shared().waitForATTUserAuthorization(timeoutInterval: 60)
        NotificationCenter.default.addObserver(self, selector: #selector(didBecomeActiveNotification),
           name: UIApplication.didBecomeActiveNotification,
           object: nil)
        
        return true
    }
    
    func onAppOpenAttribution(_ data: [AnyHashable : Any]) {
        conversionDataSuccess(data)
    }

    func onConversionDataSuccess(_ data: [AnyHashable : Any]) {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: data, options: [])
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                UserDefaults.standard.set(jsonString, forKey: "user_attr_data")
            }
        } catch {
        }
    }

    private func conversionDataSuccess(_ data: [AnyHashable : Any]) {
        
    }

    func onConversionDataFail(_ error: Error) {
    }
    
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        let pushData = response.notification.request.content.userInfo
    }

    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
    }
    
}

@main
struct ZeusStoryApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            LoadingView()
        }
    }
}
