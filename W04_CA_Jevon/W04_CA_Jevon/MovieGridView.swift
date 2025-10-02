////
////  MovieGridView.swift
////  W04_CA_Jevon
////
////  Created by student on 02/10/25.
////
//
import SwiftUI

struct MovieGridView: View {
    @StateObject private var movieStore = MovieStore()
    @State private var searchText = ""
    @State private var selectedGenre = "All"
    

    @AppStorage("colorScheme") private var colorScheme: Scheme = .system
    @State private var isShowingSettings = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                GenreDropdownView(
                    selectedGenre: $selectedGenre,
                    allGenres: movieStore.allGenres
                )
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(filteredMovies) { movie in
                            NavigationLink(value: movie) {
                                MovieCard(movie: movie)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("UCFlix")
            .searchable(text: $searchText, prompt: "Search for a movie")
            .navigationDestination(for: Movie.self) { movie in
                MovieDetailView(movie: movie)
            }

            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
            .sheet(isPresented: $isShowingSettings) {

                SettingsView(colorScheme: $colorScheme)
            }
        }

        .preferredColorScheme(colorScheme.colorScheme)
    }
    

    var filteredMovies: [Movie] {
        var filteredList = movieStore.movies

        if selectedGenre != "All" {
            filteredList = filteredList.filter { $0.genre == selectedGenre }
        }
        
        if !searchText.isEmpty {
            filteredList = filteredList.filter { movie in
                movie.title.localizedCaseInsensitiveContains(searchText)
            }
        }
        
        return filteredList
    }
}

//#Preview {
//    MovieGridView()
//}
