//
//  MythListItem.swift
//  ZeusStory
//
//  Created by Anton on 4/2/24.
//

import SwiftUI

struct MythListItem: View {
    
    var mythItem: MythItem
    
    var body: some View {
        HStack {
            Image(mythItem.mythImage)
                .resizable()
                .frame(width: 180, height: 140)
                .scaledToFill()
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text(mythItem.mythName)
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .bold))
                    .multilineTextAlignment(.leading)
                
                Spacer().frame(height: 12)
                
                Text("\(String(mythItem.mythText.prefix(100)))...")
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                    .multilineTextAlignment(.leading)
            }
            .padding(.leading, 4)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(Color(hex: "#222222"))
        )
        .cornerRadius(12)
    }
}

#Preview {
    MythListItem(mythItem: mythsData[0])
}
