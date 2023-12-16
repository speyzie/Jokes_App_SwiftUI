//
//  Jokes_Data.swift
//  Jokes_App_SwiftUI
//
//  Created by Asya Güney on 13.12.2023.
//

import Foundation

struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}


