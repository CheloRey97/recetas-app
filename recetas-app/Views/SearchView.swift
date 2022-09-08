//
//  Search.swift
//  recetas-app
//
//  Created by Marcelo Rey on 06-09-22.
//

import SwiftUI

struct Search: View {
    @StateObject var oo = SearchObservableObject()
    @State private var searchTerm = ""
    
    var listRecipe: [Recipe] {
        if (searchTerm.isEmpty){
            return oo.data
        } else {
            return oo.searchResults
        }
    }
    
    var body: some View {
        NavigationView{
            List(listRecipe) { recipe in
                NavigationLink(destination: DetailView(recipe: recipe)){
                    RecipeRow(recipe: recipe)
                }
            }
            .navigationTitle("Búsqueda")
            .animation(.default, value: searchTerm)
        }
        .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always), prompt: "Buscar recetas")
        
        .onChange(of: searchTerm) { searchTerm in
            oo.searchResults = oo.data.filter({ recipe in
                recipe.name.lowercased().contains(searchTerm.lowercased()) ||
                // El Arreglo de ingredientes se une, convirtiendolo en un string y transformando todos los caracteres de este en minúsculas para mejorar la experiencia de búsqueda
                recipe.ingredients.joined(separator: " ").lowercased().contains(searchTerm.lowercased())
            })
        
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
