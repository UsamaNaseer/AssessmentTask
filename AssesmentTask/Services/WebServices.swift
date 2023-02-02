//
//  ApiManager.swift
//  AssesmentTask
//
//  Created by Usama Naseer on 01/02/2023.
//

import Foundation

class Webservice {
    func fetchMovies(url: URL?) async throws -> [Movie] {
        guard let url = url else {
            return []
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let moviesResponse = try? JSONDecoder().decode(MoviesListModel.self, from: data)
        
        return moviesResponse?.results ?? []
    }
    
    func fetchMovieDetails(url: URL?) async throws -> Movie? {
        guard let url = url else {
            return nil
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let moviesResponse = try? JSONDecoder().decode(Movie.self, from: data)
        
        return moviesResponse
    }
}
