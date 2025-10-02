//
//  GenreFilterView.swift (sblm rename)
//  W04_CA_Jevon
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct GenreDropdownView: View {
    // @Binding tetap digunakan, ini adalah koneksi ke genre yang dipilih di parent view.
    @Binding var selectedGenre: String
    
    // Daftar semua genre yang akan ditampilkan di dalam dropdown.
    let allGenres: [String]
    
    var body: some View {

        Menu {

            ForEach(allGenres, id: \.self) { genre in
                // Setiap pilihan adalah sebuah tombol.
                Button(action: {
                    // Saat genre dipilih, perbarui state di parent view melalui binding.
                    selectedGenre = genre
                }) {
                    HStack {
                        Text(genre)
                        if selectedGenre == genre {
                            Spacer()
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
        } label: {
            // tampilan tombol dropdown sebelum di tap
            HStack {
                Text("Genre: \(selectedGenre)")
                Image(systemName: "chevron.down")
            }
            .font(.subheadline)
            .padding(.vertical, 8)
            .padding(.horizontal, 12)
            .background(Color.gray.opacity(0.2))
            .foregroundColor(.primary)
            .cornerRadius(10)
        }
        .padding(.horizontal)
        .padding(.bottom, 8)
    }
}
