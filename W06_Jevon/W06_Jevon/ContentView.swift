//
//  ContentView.swift
//  W06_Jevon
//
//  Created by student on 16/10/25.
//

import SwiftUI

enum LoadingState {
    case idle
    case loading
    case success(data: String)
    case error(message: String)
    
}


struct ContentView: View {
    // Enum
    @State private var state: LoadingState = .idle
    var body: some View {
        VStack{
            Group{
                switch state {
                case .idle: Text("Tap to start loading")
                case .loading: ProgressView("Loading...")
                case .success(let data): Text("Loaded: \(data)")
                        .foregroundColor(.green)
                case .error(message: let msg): Text("Error: \(msg)")
                        .foregroundColor(.red)
                }
            }
            
            HStack{
                Button("Start") {state = .loading}
                Button("Success") {state = .success(data: "KTP mu telah diupload utk pinjol!")}
            }
            
        }
    }

}

#Preview {
    ContentView()
}
