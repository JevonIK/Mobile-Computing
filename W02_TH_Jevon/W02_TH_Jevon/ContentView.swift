//
//  ContentView.swift
//  W02_TH_Jevon
//
//  Created by student on 23/09/25.
// Jevon Ivander K / 0706022310028. Take Home Mobcomp Week 2

import SwiftUI

struct ContentView: View {
    
    // Variabel utk bool tugas
    @State private var isTask1Complete = false
    @State private var isTask2Complete = false
    @State private var isTask3Complete = false
    @State private var isTask4Complete = false
    @State private var isTask5Complete = false
    
    // Variabel utk progress wall
    @State private var progressValue: Double = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            
            // Judul
            Text("To-Do List Hari Ini")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            // ProgressView
            VStack {
                Text("Progress: \(Int(progressValue * 100))%")
                ProgressView(value: progressValue, total: 1.0)
                    .progressViewStyle(LinearProgressViewStyle(tint: .blue))
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal)
            
            // list daftar tugas
            List {
                // Toggle utk ngecek tugas yg sudah dilakukan
                HStack {
                    Text("Kerja tugas Mobile Computing")
                    Spacer()
                    // Kontrol Tambahan: Image yang berubah sesuai status
                    Image(systemName: isTask1Complete ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(isTask1Complete ? .green : .gray)
                        .imageScale(.large)
                    Toggle("", isOn: $isTask1Complete)
                        .labelsHidden()
                        .onChange(of: isTask1Complete) { updateProgress() }
                }
                
                HStack {
                    Text("Belajar 100 days SwiftUI")
                    Spacer()
                    Image(systemName: isTask2Complete ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(isTask2Complete ? .green : .gray)
                        .imageScale(.large)
                    Toggle("", isOn: $isTask2Complete)
                        .labelsHidden()
                        .onChange(of: isTask2Complete) { updateProgress() }
                }
                
                HStack {
                    Text("Membaca materi kuliah")
                    Spacer()
                    Image(systemName: isTask3Complete ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(isTask3Complete ? .green : .gray)
                        .imageScale(.large)
                    Toggle("", isOn: $isTask3Complete)
                        .labelsHidden()
                        .onChange(of: isTask3Complete) { updateProgress() }
                }

                HStack {
                    Text("Jogging keliling UC 10x")
                    Spacer()
                    Image(systemName: isTask4Complete ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(isTask4Complete ? .green : .gray)
                        .imageScale(.large)
                    Toggle("", isOn: $isTask4Complete)
                        .labelsHidden()
                        .onChange(of: isTask4Complete) { updateProgress() }
                }

                HStack {
                    Text("Ganti galon air")
                    Spacer()
                    Image(systemName: isTask5Complete ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(isTask5Complete ? .green : .gray)
                        .imageScale(.large)
                    Toggle("", isOn: $isTask5Complete)
                        .labelsHidden()
                        .onChange(of: isTask5Complete) { updateProgress() }
                }
            }
            .listStyle(PlainListStyle())
            
            //
            VStack(spacing: 10) {
                // Tombol baru: "Mark All as Done"
                Button(action: {
                    self.isTask1Complete = true
                    self.isTask2Complete = true
                    self.isTask3Complete = true
                    self.isTask4Complete = true
                    self.isTask5Complete = true
                    self.progressValue = 1.0 // Set progress langsung ke 100%
                }) {
                    Text("Mark All as Done")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green) // Warna hijau untuk menandakan selesai
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                // Button utk reset progress
                Button(action: {
                    // Mereset semua status dan progres
                    self.isTask1Complete = false
                    self.isTask2Complete = false
                    self.isTask3Complete = false
                    self.isTask4Complete = false
                    self.isTask5Complete = false
                    self.progressValue = 0.0
                }) {
                    Text("Reset Progress")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
        }
    }
    
    // Function to update progress
    func updateProgress() {
        var completedCount = 0
        if isTask1Complete { completedCount += 1 }
        if isTask2Complete { completedCount += 1 }
        if isTask3Complete { completedCount += 1 }
        if isTask4Complete { completedCount += 1 }
        if isTask5Complete { completedCount += 1 }
        
        self.progressValue = Double(completedCount) / 5.0
    }
}

#Preview {
    ContentView()
}
