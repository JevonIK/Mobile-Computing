//
//  ContentView.swift
//  W01_CA_Jevon
//
//  Created by student on 11/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Image("wallpaperPutih")
            
            VStack {
                
                Image("fotoCA1")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 200, height: 200)
                    .overlay(Circle().stroke(Color.black, lineWidth: 7))
                    .padding(.bottom)
                    .shadow(radius: 5)
                
                Text("Hi! I'm Jevon Ivander K")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.headline)
                    .background(.ultraThinMaterial)
                
                Text("My age is 20 years old")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.headline)
                    .background(.ultraThinMaterial)
                
                Text("👌🔥🤡")
                    .font(.system(size: 80))
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.headline)
                    .shadow(radius: 5)
                
                Button {
                    print("Image button tapped!")
                } label: {
                    Text("Click for More") // SF Symbol
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }

            }
        }

        .padding()
    }
}

#Preview {
    ContentView()
}
