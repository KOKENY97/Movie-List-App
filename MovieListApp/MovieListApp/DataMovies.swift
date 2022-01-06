//
//  DataMovies.swift
//  MovieListApp
//
//  Created by user209843 on 1/6/22.
//

import Foundation

class DataMovies {
    
    static var movies:[Movies] = []
    
    static func getFavoriteMovies() -> [Movies]{
        var favoriteMovies:[Movies] = []
        
        for movie in DataMovies.movies {
            if movie.isFavorite{
                favoriteMovies.append(movie)
            }
        }
        
        return favoriteMovies
    }
    
}
