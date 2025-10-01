//
//  ContentView.swift
//  W03_TH_Jevon
//
//  Created by student on 30/09/25.
//


import SwiftUI

struct HealthDashboardView: View {
    var body: some View {
        //  ZStack agar background bisa diletakkan di bawah konten
        ZStack {
            // Latar belakang gradien
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.25), Color.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .top)
            
            // Konten di dalam ScrollView agar bisa discroll
            ScrollView {
                VStack(spacing: 20) {

                    HStack {
                        VStack(alignment: .leading) {
                            Text("Good Morning,").font(.system(size: 20))
                            Text("Mikaela").font(.largeTitle).fontWeight(.bold)
                        }
                        Spacer()
                        Image("fotoprofil")
                            .resizable().scaledToFit().frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.3), lineWidth: 1))
                    }
                    .padding(.horizontal)

                    HStack {
                        Image(systemName: "magnifyingglass").foregroundColor(.gray)
                        TextField("Search", text: .constant(""))
                    }
                    .padding().background(Color.white.opacity(0.6)).cornerRadius(15).padding(.horizontal)
                    
                    GoalSectionBox()
                        .padding(.horizontal)

                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                        MetricCardView(iconName: "heart.fill", value: "68 Bpm", iconColor: .purple)
                        MetricCardView(iconName: "flame.fill", value: "0 Kcal", iconColor: .orange)
                        MetricCardView(iconName: "scalemass.fill", value: "73 Kg", iconColor: .green)
                        MetricCardView(iconName: "moon.fill", value: "6.2 Hr", iconColor: .blue)
                    }
                    .padding(.horizontal)

                }
                .padding()
                
            }
        }
        
    }
}

struct LocationView: View {
    var body: some View {
        Text("Location View")
            .font(.largeTitle)
    }
}

struct StatisticsView: View {
    var body: some View {
        Text("Statistics View")
            .font(.largeTitle)
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings View")
            .font(.largeTitle)
    }
}

// Box Today's Goal
struct GoalSectionBox: View {
    var body: some View {
        ZStack {
            // Background Gradien Utama (Pink/Teal)
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.95, green: 0.2, blue: 0.5), Color(red: 0.1, green: 0.8, blue: 0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
            VStack(spacing: 15) {
                Text("Today's Goal")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                HStack(spacing: 15) {
                    GoalCardView(iconName: "figure.walk", value: "4 Miles", description: "@Thames Route", gradientColors: [Color.white.opacity(0.3), Color.white.opacity(0.1)])
                    GoalCardView(iconName: "figure.open.water.swim", value: "2 Miles", description: "@River Lea", gradientColors: [Color.white.opacity(0.3), Color.white.opacity(0.1)])
                }
                .padding(.horizontal, 20)
            }
        }
        .cornerRadius(25)
        .shadow(color: .pink.opacity(0.4), radius: 10, x: 0, y: 5)
        .frame(height: 250)
    }
}



// template utk komponen lainnya

// kotak jalan dan berenang dalam today's goal
struct GoalCardView: View {
    let iconName: String
    let value: String
    let description: String
    let gradientColors: [Color]

    var body: some View {
        VStack() {
            Image(systemName: iconName)
                .font(.system(size: 60)).foregroundColor(.white).padding(8)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 80, height: 80)

            Text(value)
                .font(.title2).fontWeight(.bold).foregroundColor(.white)

            Text(description)
                .font(.caption).foregroundColor(.white.opacity(0.8))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .cornerRadius(20)
        .shadow(color: gradientColors.first!.opacity(0.3), radius: 5, x: 0, y: 5)
    }
}

struct MetricCardView: View {
    let iconName: String
    let value: String
    let iconColor: Color

    var body: some View {
        // box dibagi 2 vertikal
        VStack(alignment: .leading, spacing: 0) {
            // box sisi atas dibagi 2 sisi horizontal
            HStack {
                // letaknya kiri atas
                Image(systemName: iconName)
                    .foregroundColor(iconColor)
                    .font(.largeTitle)
                
                Spacer() // Mendorong teks ke kiri
            }

            // Spacer vertikal utk drong teks ke bawah
            Spacer()

            // box sisi bawah dibagi 2 sisi horizontal
            HStack {
                Spacer() // Mendorong teks ke kanan bawah
                
                // Teks di kanan bawah
                Text(value)
                    .font(.title2)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 100) // Opsional: Tambahkan tinggi tetap agar layout lebih jelas
        .background(Color.white.opacity(0.6))
        .cornerRadius(15)
        .shadow(color: Color.gray.opacity(0.1), radius: 3, x: 0, y: 3)
    }
}

struct TabItemView: View {
    let iconName: String
    let label: String
    let isSelected: Bool

    var body: some View {
        VStack {
            Image(systemName: iconName)
                .font(.title3)
                .foregroundColor(isSelected ? .red : .gray)
            
            if !label.isEmpty {
                Text(label)
                    .font(.caption2)
                    .foregroundColor(isSelected ? .red : .gray)
            }
            
            if isSelected {
                Circle()
                    .frame(width: 5, height: 5)
                    .foregroundColor(.red)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            // Tab 1: Home (Dashboard)
            HealthDashboardView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            // Tab 2: Location
            LocationView()
                .tabItem {
                    Label("Location", systemImage: "mappin.and.ellipse")
                }
            
            // Tab 3: Statistics
            StatisticsView()
                .tabItem {
                    Label("Statistics", systemImage: "chart.bar.fill")
                }
            
            // Tab 4: Settings
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        .tint(.red)
        
    }
}


#Preview {
    ContentView()
}
