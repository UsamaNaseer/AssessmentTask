//
//  ApiManager.swift
//  AssesmentTask
//
//  Created by Usama Naseer on 01/02/2023.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidData
    case decodingError
}

class Webservice {
    func fetchMovies(url: URL?) async throws -> [Movie] {
        
        guard let url = url else {
            return []
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let moviesResponse = try? JSONDecoder().decode(MoviesListModel.self, from: data)
        
        return moviesResponse?.results ?? []
        
    }
}
