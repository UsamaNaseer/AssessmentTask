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
    fileprivate let movie: Movie
    
    var id: Int {
        movie.id
    }
    
    var title: String {
        movie.originalTitle
    }
    
    var releaseDate: String {
        movie.releaseDate
    }
    
    var urlToImage: URL? {
        URL(string: Constants.Urls.baseImageURL + movie.posterPath)
    }
    
    static var `default`: MoviesModel {
        let movie = Movie(id: 123, overview: "Hello", originalTitle: "Hi", releaseDate: "12-12-2022", posterPath: "adad/afafaa")
        return MoviesModel(movie: movie)
    }
}
