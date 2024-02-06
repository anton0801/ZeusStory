//
//  LedgentItem.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import Foundation

struct LegentItem: Identifiable {
    let legendName: String
    let legendText: String
    let ledgentImage: String
    let id: String = UUID().uuidString
}
