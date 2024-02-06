//
//  MythItem.swift
//  ZeusStory
//
//  Created by Anton on 4/2/24.
//

import Foundation

struct MythItem: Identifiable {
    let mythName: String
    let mythText: String
    let mythImage: String
    let id: String = UUID().uuidString
}
