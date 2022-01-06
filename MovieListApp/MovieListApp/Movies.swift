//
//  Movies.swift
//  MovieListApp
//
//  Created by user209843 on 1/6/22.
//

import Foundation

class Movies {
    
    var name: String
    var imageName: String
    var isFavorite: Bool
    
    init(name: String, imageName: String, isFavorite: Bool) {
        self.name = name
        self.imageName = imageName
        self.isFavorite = isFavorite
    }
    
}
