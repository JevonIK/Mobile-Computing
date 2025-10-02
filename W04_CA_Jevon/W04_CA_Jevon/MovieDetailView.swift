//
//  MovieDetailView.swift
//  W04_CA_Jevon
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: movie.posterURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                } placeholder: {
                    Rectangle()
                        .foregroundColor(.gray.opacity(0.4))
                        .aspectRatio(2/3, contentMode: .fit)
                        .cornerRadius(10)
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(movie.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(movie.genre)
                        .font(.title3)
                        .foregroundColor(.secondary)
                    
                    Divider()
                        .padding(.vertical, 8)
                    
                    Text("About Movie")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(movie.description)
                        .font(.body)
                }
            }
            .padding()
        }
        .navigationTitle(movie.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    NavigationStack {
//        MovieDetailView(movie: Movie(
//            title: "Judul Film Contoh",
//            genre: "Sci-Fi",
//            posterURL: URL(string: "https://picsum.photos/seed/scifi/400/600"),
//            description: "Deskripsi blaaaaaaa utk bisa dilihat preview aja ahliuhuifhiuhsdfushisuhsiuhsoiuhsfuhfuifsdhusfdfsijsojisfdoidjosidfjodifj."
//        ))
//    }
//}
