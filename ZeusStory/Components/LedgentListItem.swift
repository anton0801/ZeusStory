//
//  LedgentListItem.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import SwiftUI

struct LedgentListItem: View {
    
    var legendItem: LegentItem
    
    var body: some View {
        HStack {
            Image(legendItem.ledgentImage)
                .resizable()
                .frame(width: 180, height: 140)
                .scaledToFill()
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text(legendItem.legendName)
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .bold))
                    .multilineTextAlignment(.leading)
                
                Spacer().frame(height: 12)
                
                Text("\(String(legendItem.legendText.prefix(100)))...")
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
        .onAppear {
            print(legendItem)
        }
    }
}

#Preview {
    LedgentListItem(legendItem: legendsData[1])
}
