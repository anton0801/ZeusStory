//
//  LegendsListView.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import SwiftUI

struct LegendsListView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack {
                        ForEach(legendsData, id: \.id) { legendItem in
                            NavigationLink(destination: LegendDetailsView(legendItem: legendItem).navigationBarBackButtonHidden(true)) {
                                LedgentListItem(legendItem: legendItem)
                                    .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Greece Legends")
            .navigationBarTitleDisplayMode(.inline)
        }
        .preferredColorScheme(.dark)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    LegendsListView()
}
