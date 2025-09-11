//
//  ContentView.swift
//  W01_Jevon 2
//
//  Created by student on 11/09/25.
//

import SwiftUI

struct Student {
    var name: String
    var year: Int
    func display() -> String {
        "\(name), \(year)"
    }
}

enum UserStatus {case offline, online, busy}

struct ContentView: View {
    let userName = "Blabla"
    let scores = [89, 92, 76]
    let student = Student(name: "Bibi", year: 2)
    let status: UserStatus = .online
    
    var badge: String {
        scores.allSatisfy{$0 >= 85} ? "✅" : "❌"
    }
    
    var body: some View {
        VStack(spacing:10){
            Text("Hello, \(userName)")
                .font(.title)
            
            Text("Student: \(student.display())")
            
            Text("Status: \(status == .online ? "🟢 Online" : "🔴 Offline")")
            
            Text("Badge: \(badge)")
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
