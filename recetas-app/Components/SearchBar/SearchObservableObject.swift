//
//  SearchObservableObject.swift
//  recetas-app
//
//  Created by Marcelo Rey on 06-09-22.
//


import Combine

class SearchObservableObject: ObservableObject {
    var data: [Receta] = []
    @Published var searchResults: [Receta] = []
    
    init() {
        data = listaRecetas
    }
}

