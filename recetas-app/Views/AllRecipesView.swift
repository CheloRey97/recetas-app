//
//  AllRecipesView.swift
//  recetas-app
//
//  Created by Marcelo Rey on 06-09-22.
//

import SwiftUI

struct AllRecipesView: View {
    var columnas = [GridItem(.adaptive(minimum: 160), spacing: 30)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columnas, spacing: 30) {
                    ForEach(recipeList, id: \.id ) {
                        receta in RecetaCard(receta: receta)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Nuestras Recetas"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct AllRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        AllRecipesView()
    }
}
