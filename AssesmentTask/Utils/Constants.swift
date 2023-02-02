//
//  Constants.swift
//  AssesmentTask
//
//  Created by Usama Naseer on 01/02/2023.
//

import Foundation

struct Constants {
    
    struct Urls {
        static var baseURL = "https://api.themoviedb.org/3/"
        static var baseImageURL = "https://image.tmdb.org/t/p/w500"
        static var apiKey = "c9856d0cb57c3f14bf75bdc6c063b8f3"
        
        static func movie(by movieId: String) -> URL? {
            return URL(string: "\(baseURL)movie/\(movieId)&api_key=\(apiKey)")
        }

        static let movies: URL? = URL(string: "\(baseURL)discover/movie?api_key=\(apiKey)")
    }
    
}
