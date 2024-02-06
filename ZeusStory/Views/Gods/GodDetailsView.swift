//
//  GodDetailsView.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import SwiftUI

struct GodDetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var godItem: GodItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.white)
                    
                    Text("Back")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                }
            }
            
            TabView {
                ForEach(godItem.godImages, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width)
                        .edgesIgnoringSafeArea(.top)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            Text(godItem.godName)
                .font(.system(size: 32, weight: .bold))
                .padding(.leading)
                .foregroundColor(.white)
            
            HTMLView(html: godItem.godDescription)
            
            Spacer()
        }
        .preferredColorScheme(.dark)
        .animation(.easeInOut)
    }
}

#Preview {
    GodDetailsView(godItem: godsInfo[0])
}
