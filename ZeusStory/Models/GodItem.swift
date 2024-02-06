//
//  GodItem.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import Foundation

struct GodItem: Identifiable {
    let id: String = UUID().uuidString
    let godName: String
    let godDescription: String
    let godImages: [String]
}
