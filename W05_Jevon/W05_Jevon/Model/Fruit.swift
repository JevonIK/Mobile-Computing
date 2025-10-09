//
//  Fruit.swift
//  W05_Jevon
//
//  Created by student on 09/10/25.
//


// GA DIPAKAI INI CUMA BUAT PELAJARAN

import Foundation

struct Fruit: Identifiable, Codable, Hashable {
    let UUID: UUID // Universal Unique ID
    let id: String // A001
    let name: String // Apple
    let color: String // Green
    
    // Identifiable = Who's who
    // Codabale = Struct ini bisa kominunikasi dgn file lain / API
    // Hasahable = Swift bisa melakukan komparasi / track codenya.
    
    ForEach (fruits, id: \.id) (fruit) in {
        //id: \.id itu utk setiap fruit yg kita punya memiliki nama atau id yg unik
        
    }
}
