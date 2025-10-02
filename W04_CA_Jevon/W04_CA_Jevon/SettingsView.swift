//
//  SettingsView.swift
//  W04_CA_Jevon
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct SettingsView: View {

    @Binding var colorScheme: Scheme
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Appearance")) {
                    Picker("Theme", selection: $colorScheme) {
                        ForEach(Scheme.allCases) { scheme in
                            Text(scheme.displayName).tag(scheme)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        dismiss() // Tombol untuk menutup halaman
                    }
                }
            }
        }
    }
}
