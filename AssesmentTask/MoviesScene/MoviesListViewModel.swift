//
//  MoviesListViewModel.swift
//  AssesmentTask
//
//  Created by Usama Naseer on 01/02/2023.
//

import Foundation

@MainActor
class MoviesListViewModel: ObservableObject {
    
    @Published var movies = [MoviesModel]()
    
    func getMovies() async {
        do {
        let movies = try await Webservice().fetchMovies(url: Constants.Urls.movies)
            self.movies = movies.map(MoviesModel.init)
        } catch {
            print(error)
        }
    }
    
}

struct MoviesModel {
    let id = UUID()
    fileprivate let movie: Movie
    
    var title: String {
        movie.originalTitle
    }
    
    var releaseDate: String {
        movie.releaseDate
    }
    
    var urlToImage: URL? {
        URL(string: Constants.Urls.baseImageURL + movie.posterPath)
    }
}
