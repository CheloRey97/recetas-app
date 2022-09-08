//
//  SearchObservableObject.swift
//  recetas-app
//
//  Created by Marcelo Rey on 06-09-22.
//


import Combine

class SearchObservableObject: ObservableObject {
    @Published var data: [Recipe] = []
    @Published var searchResults: [Recipe] = []
    
    init() {
        data = recipeList
    }
}

