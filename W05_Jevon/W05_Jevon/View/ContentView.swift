//
//  ContentView.swift
//  W05_Jevon
//
//  Created by student on 09/10/25.
//

import SwiftUI

struct CounterHomeView: View {
    @State private var vm = CounterVM()
    
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 16){
                Text("Count : \(vm.count)")
                    .font(.largeTitle)
                    .bold()
                Text(vm.isEven ? "Even" : "Odd")
                    .foregroundStyle(.secondary)
                
                HStack{
                    Button("+"){vm.increment()}
                        .buttonStyle(.bordered)
                    Button("-"){vm.decrement()}
                        .buttonStyle(.bordered)
                }
                Button("Reset"){vm.reset()}
                    .buttonStyle(.borderedProminent)
                
                NavigationLink("Mirror Screen"){
                    CounterMirrorView(vm:vm) // artinya vm yg ada di CounterMirroView ada di CounterHomeView. (vm:vm) VM yg kiri punya CounterMirrorView yg kanan punya CounterHomeView.
                }
            }
        }
    }
}

struct CounterMirrorView: View{
    var vm: CounterVM
    
    var body: some View{
        VStack(spacing: 16){
            Text("Mirror Count: \(vm.count)")
            Button("Add here"){vm.increment()}
        }
        .font(.title2)
        .padding()
    }
    
    
}

#Preview {
    CounterHomeView()
}
