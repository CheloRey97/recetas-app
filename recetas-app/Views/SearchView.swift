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
    
    var body: some View {
        NavigationView{
            VStack{
                Title(title: "Encuentra recetas")
                Text("Comienza a buscar tus recetas favoritas, ya sea por nombre o ingredientes.")
                    .multilineTextAlignment(.center)
                ForEach(oo.searchResults) { recipe in
                    NavigationLink(destination: RecetaView(receta: recipe)){
                        RecipeRow(recipe: recipe)
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.gray)
            .navigationTitle("Búsqueda")
        }
        .searchable(text: $searchTerm, prompt: "Buscar recetas"){
            ForEach(oo.searchResults) { recipe in
                RecipeRow(recipe: recipe)
            }
        }
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
