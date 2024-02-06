//
//  GodsListView.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import SwiftUI

struct GodsListView: View {
    
    private var columns = [
        GridItem(.flexible(minimum: 140), spacing: 8),
        GridItem(.flexible(minimum: 140), spacing: 8)
    ]
    
    private var columnsIpad = [
        GridItem(.flexible(minimum: 140), spacing: 8),
        GridItem(.flexible(minimum: 140), spacing: 8),
        GridItem(.flexible(minimum: 140), spacing: 8)
    ]
    
    func isiPad() -> Bool {
        #if targetEnvironment(macCatalyst)
        return false
        #else
        return UIDevice.current.userInterfaceIdiom == .pad
        #endif
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: isiPad() ? columnsIpad : columns, spacing: 8) {
                        ForEach(godsInfo, id: \.id) { godItem in
                            NavigationLink(destination: GodDetailsView(godItem: godItem).navigationBarBackButtonHidden(true)) {
                                GodeItemView(godItem: godItem)
                                    .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 12))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Greece Gods")
            .navigationBarTitleDisplayMode(.inline)
        }
        .preferredColorScheme(.dark)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}

#Preview {
    GodsListView()
}
