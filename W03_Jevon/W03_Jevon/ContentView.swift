//
//  ContentView.swift
//  W03_Jevon
//
//  Created by student on 25/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("🏡Home Screen")
                    .font(.largeTitle)
                NavigationLink("Go to Details"){
                    DetailScreen()
                }
                NavigationLink("Show Item"){
                    ItemScreen()
                }
            }
        }
    }
}


struct DetailScreen: View {
    var body: some View {
        VStack{
            Text("⚙️Detail Screen📺")
                .font(.largeTitle)
            Text("You come from home screen!")
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemScreen: View {
    let items = ["Tomato", "Papaya", "Pineapple"]
    var body: some View {
        List(items, id: \.self){
            item in NavigationLink(destination: ItemDetailScreen(item:item)){
                Text(item)
            }
        }
    }
}

struct ItemDetailScreen: View {
    let item: String
    var body: some View {

        VStack{
            Text("👋🏻Welcome to item Detail!")
                .font(.title)
            Text("You selected \(item)")
        }
        .navigationTitle(item)
        .navigationBarTitleDisplayMode(.inline)
    }
}



#Preview {
    ContentView()
}
