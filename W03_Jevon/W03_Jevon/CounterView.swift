//
//  CounterView.swift
//  W03_Jevon
//
//  Created by student on 25/09/25.
// Cara buatnya: klik kanan folder W03_Jevon > new file from template > swift ui view > rename jd Counter View

import SwiftUI

struct CounterView: View {
    
    @Binding var count: Int // binding ini untuk passing antar view, kalau state gabisa
    
    var body: some View {
        
        VStack{
            Text("Child View (CounterView)")
                .font(.headline)
            HStack{
                Button("+"){
                    count += 1
                }
                .buttonStyle(.bordered)
                Button("-"){
                    count -= 1
                }
                .buttonStyle(.bordered)
            }

        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(10)
    }

}


//#Preview {
//    CounterView()
//}
