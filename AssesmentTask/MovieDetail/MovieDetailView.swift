//
//  MovieDetailView.swift
//  AssesmentTask
//
//  Created by Usama Naseer on 02/02/2023.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: MoviesModel
    @StateObject private var moviesDetailviewModel = MovieDetailViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: movie.urlToImage) { image in
                image.resizable()
                    .frame(maxWidth: 200, maxHeight: 400)
            } placeholder: {
                ProgressView("Loading...")
                    .frame(maxWidth: 100, maxHeight: 100)
            }
            
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: MoviesModel.default)
    }
}
