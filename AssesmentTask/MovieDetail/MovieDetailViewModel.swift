//
//  MovieDetailViewModel.swift
//  AssesmentTask
//
//  Created by Usama Naseer on 02/02/2023.
//

import Foundation

@MainActor
class MovieDetailViewModel: ObservableObject {
    
    func getMovieDetails() async {
        do {
            let movie = try await Webservice().fetchMovieDetails(url: Constants.Urls.movie(by: ""))
        } catch {
            print(error)
        }
    }
    
}
