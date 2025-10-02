//
//  Movie.swift
//  W04_CA_Jevon
//
//  Created by student on 02/10/25.
//

import Foundation


struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let genre: String
    let posterURL: URL?
    let description: String
}
