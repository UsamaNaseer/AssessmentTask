//
//  MovieRowView.swift
//  AssesmentTask
//
//  Created by Usama Naseer on 01/02/2023.
//

import SwiftUI

struct MovieRowView: View {
    var moviesModel: MoviesModel
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: moviesModel.urlToImage) { image in
                image.resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
            } placeholder: {
                ProgressView("Loading...")
                    .frame(maxWidth: 100, maxHeight: 100)
            }
            VStack(alignment: .leading)
                {
                Text(moviesModel.title)
                Text(moviesModel.releaseDate)
            }
            Spacer()
        }
    }
}

