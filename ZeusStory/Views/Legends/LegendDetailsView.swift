//
//  LegendDetailsView.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import SwiftUI

struct LegendDetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode

    var legendItem: LegentItem
    
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
                    Image(legendItem.ledgentImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width)
                        .edgesIgnoringSafeArea(.top)
                    
                    Text(legendItem.legendName)
                        .font(.system(size: 32, weight: .bold))
                        .padding(.leading)
                        .foregroundColor(.white)
                    
                    Text(legendItem.legendText)
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
    LegendDetailsView(legendItem: legendsData[0])
}
