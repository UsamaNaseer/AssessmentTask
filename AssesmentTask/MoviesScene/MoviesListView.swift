//
//  ContentView.swift
//  AssesmentTask
//
//  Created by Usama Naseer on 31/01/2023.
//

import SwiftUI

struct MoviesListView: View {
    @StateObject private var moviesListViewModel = MoviesListViewModel()
    
    var body: some View {
        NavigationView {
            List(moviesListViewModel.movies, id: \.id) { movie in
                MovieRowView(moviesModel: movie)
            }
            .listStyle(.plain)
            .task({
                await moviesListViewModel.getMovies()
            })
            .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
