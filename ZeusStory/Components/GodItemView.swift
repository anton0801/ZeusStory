//
//  GodItem.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import SwiftUI

struct GodeItemView: View {
    
    var godItem: GodItem
    
    var body: some View {
        VStack {
            VStack {
                Image(godItem.godImages[0])
                    .resizable()
                    .frame(maxWidth: 280, maxHeight: 260)
                    .scaledToFill()
                
                Text(godItem.godName)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                
                Spacer().frame(height: 12)
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(Color(hex: "#222222"))
        )
        .cornerRadius(12)
        .shadow(color: Color(hex: "#222222"), radius: 10, x: 2, y: 4)
    }
}

#Preview {
    GodeItemView(godItem: godsInfo[0])
}
