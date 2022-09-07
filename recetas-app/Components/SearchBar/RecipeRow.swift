//
//  RecipeRow.swift
//  recetas-app
//
//  Created by Marcelo Rey on 06-09-22.
//

import SwiftUI

struct RecipeRow: View {
    var recipe: Receta
    
    var body: some View {
        HStack {
            Image(recipe.imagen)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 4) {
                Text(recipe.name)
                    .font(.title2.weight(.semibold))
                Group {
                    Text(recipe.category!)
                    Text(recipe.country!)
                }
                .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 4)
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(recipe: listaRecetas[0])
            .previewLayout(.sizeThatFits)
    }
}
