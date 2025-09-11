//
//  ContentView.swift
//  W01_Jevon I
//
//  Created by student on 11/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
// Materi 1
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Text("Declarative UI | Live Preview | Swift UI Cool!")
                .multilineTextAlignment(.center)
                .padding()
                .font(.headline)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Image(systemName: "sparkles") // sparks ini namanya SF Symbols
                .imageScale(.large)
                .font(.system(size: 100))
                .padding()
                .overlay(content: {
                    Circle().strokeBorder(.gray.opacity(0.3), lineWidth: 2)
                    }
                )
                .foregroundStyle(.yellow)
            
            Text("🥸")
                .font(.system(size: 100))
           
        
        
        
        
        
// Materi 2
        VStack(alingment: .leading, spacing: 15){
            HStack(spacing: 12){
                Text("first")
                Text("second")
                Text("third")
            }

        
// Materi 3: # 3 buah emoji di dalam setiap VStack & ada emoji yang berbeda setiap row
        HStack (spacing:20){
            VStack{
                Text("🥰")
                Text("🥳")
                Text("🫥")
            }
            VStack{
                Text("🥰")
                Text("🥳")
                Text("🫥")
            }
            VStack{
                Text("🥰")
                Text("🥳")
                Text("🫥")
            }
        
            
            
            
            
            
            
            
        }
        .padding()
    }
    
    let name = "Alice"
    var age = 20
    func greet(){
        print("Hello, \(name), age \(age)")
    }
}

#Preview {
    ContentView()
}
