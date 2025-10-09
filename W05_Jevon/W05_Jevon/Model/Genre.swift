//
//  Genre.swift
//  W05_Jevon
//
//  Created by student on 09/10/25.
//

import Foundation

struct Genre: Identifiable, Codable, Hashable {
    let id = UUID()
    var name: String
    var colorHex: String
    
    static let all : [Genre] = [
        .init(name: "Action", colorHex: "#42f542"),
        .init(name: "Romance", colorHex: "#f5424e")
    ]
}
