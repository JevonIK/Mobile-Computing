//
//  MovieViewModel.swift
//  W05_Jevon
//
//  Created by student on 09/10/25.
//

import Foundation
import SwiftUI
import Observation

@Observable
final class MovieViewModel: ObservableObject {
    var movies: [Movie] = []
    private let key = "movies.store.v1"
    
    // ketika ViewModel ini dipanggil maka akan jalanin load dulu
    init(){
        load()
    }
    
    func toggleFavorite(_ movie: Movie){
        if let i = movies.firstIndex(where: { $0.id == movie.id }){
            movies[i].isFavorite.toggle()
        }
    }
    
    func addMovie(title: String, genre: Genre){
        let clean = title.trimmingCharacters(in: .whitespaces)
        if clean.isEmpty { return }
        movies.append(Movie(title: clean, genre: genre))
    }
    
    func save(){
        if let data = try? JSONEncoder().encode(movies){
            UserDefaults.standard.set(data, forKey: key)
        }
    }
    
    func load(){
        if let data = UserDefaults.standard.data(forKey: key),
           let decoded = try? JSONDecoder().decode([Movie].self, from: data){
            movies = decoded
        }else{
            let g = Genre.all
            movies = [
                Movie(title: "The Incredibles", genre: g[0]),
                Movie(title: "Shrek 2", genre: g[1])
            ]
            save()
        }
    }
    
    var favorites: [Movie] {movies.filter {$0.isFavorite}}
}
