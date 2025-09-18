//
//  ContentView.swift
//  W02_Jevon
//
//  Created by student on 18/09/25.
//
import SwiftUI
struct ContentView: View {
    
    // Declare Variable
    @State private var isOn: Bool = false
    @State private var volume: Double = 0.5
    @State private var name: String = ""
    @State private var name2: String = ""
    @State private var point = 80
    
    // function
    private func actionButton(_ title: String, action: @escaping () -> Void) -> some View {
        Button(title, action: action)
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
    
    private func ProgressCard(score: Int) -> some View {
        VStack{
            Text("Current Score").font(.headline)
            ProgressView(value: Double(score), total:100)
            Text("\(score)/100").foregroundStyle(.secondary)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
        
    var body: some View {
        // container
        VStack {
            
            Toggle("Toggle Enable Notification", isOn:$isOn)
                .padding()
            Text( isOn ? "Kalau Toggle Nyala" : "Kalau Toggle Mati")
            
            
            Slider(value: $volume, in: 0...1)
            Text("Slinder Volume sekarang: \(volume)%")
            
            
            TextField("Text Field Namamu siapa", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Hello \(name)!")
            
            
            TextField("Namamu siapa 2", text: $name2)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text(name2 == "" ? "Hai" : "Hello \(name2)")
            
        }
        .padding()
        
        VStack {
            ProgressCard(score: point)
            
            HStack{
                actionButton("Add 10"){
                    point += 10
                }
                actionButton("Reset"){
                    point = 0
                }
            }
        }

        
        .padding()
    }
}
#Preview {
    ContentView()
}
