//
//  MovieCard.swift
//  W04_CA_Jevon
//
//  Created by student on 02/10/25.
//

import SwiftUI

struct MovieCard: View {
    let movie: Movie

    var body: some View {

        AsyncImage(url: movie.posterURL) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            Rectangle()
                .fill(.gray.opacity(0.4))
        }
        .aspectRatio(2/3, contentMode: .fit)
        .overlay(
            ZStack(alignment: .bottomLeading) {
                LinearGradient(
                    gradient: Gradient(colors: [.clear, .black.opacity(0.8)]),
                    startPoint: .center,
                    endPoint: .bottom
                )
                
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Text(movie.genre)
                        .font(.caption)
                }

                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.white)
                .padding()
            }
        )
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 5)
    }
}
//#Preview {
//    NavigationStack {
//        MovieGridView()
//    }
//}
