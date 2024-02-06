//
//  MythItemDetailsView.swift
//  ZeusStory
//
//  Created by Anton on 4/2/24.
//

import SwiftUI

struct MythItemDetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var mythItem: MythItem
    
    var body: some View {
        VStack {
            HStack {
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
                .padding(.leading)
                Spacer()
            }
            
            ScrollView {
                VStack(alignment: .leading) {
                    Image(mythItem.mythImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width)
                        .edgesIgnoringSafeArea(.top)
                    
                    Text(mythItem.mythName)
                        .font(.system(size: 32, weight: .bold))
                        .padding(.leading)
                        .foregroundColor(.white)
                    
                    Text(mythItem.mythText)
                        .font(.system(size: 16, weight: .regular))
                        .padding(.leading)
                        .foregroundColor(.white)
                        .padding(.top, 4)
                }
            }
        }
        .animation(.easeInOut)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    MythItemDetailsView(mythItem: mythsData[0])
}
