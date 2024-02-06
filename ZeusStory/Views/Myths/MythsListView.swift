//
//  MythsListView.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import SwiftUI

struct MythsListView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack {
                        ForEach(mythsData, id: \.id) { mythItem in
                            NavigationLink(destination: MythItemDetailsView(mythItem: mythItem).navigationBarBackButtonHidden(true)) {
                                MythListItem(mythItem: mythItem)
                                    .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Greece Myths")
            .navigationBarTitleDisplayMode(.inline)
        }
        .preferredColorScheme(.dark)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    MythsListView()
}
