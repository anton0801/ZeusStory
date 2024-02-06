//
//  ContentView.swift
//  ZeusStory
//
//  Created by Anton on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            MythsListView()
                .tabItem {
                    Image("myths_icon").renderingMode(.template)
                    Text("Myths")
                }
            GodsListView()
                .tabItem {
                    Image("gods_icon").renderingMode(.template)
                    Text("Gods")
                }
            LegendsListView()
                .tabItem {
                    Image("legends_icon").renderingMode(.template)
                    Text("Legends")
                }
        }
        .accentColor(.blue)
        .preferredColorScheme(.dark)
    }
    
}

#Preview {
    ContentView()
}
