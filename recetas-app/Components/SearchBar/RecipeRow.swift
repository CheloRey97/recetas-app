//
//  RecipeRow.swift
//  recetas-app
//
//  Created by Marcelo Rey on 06-09-22.
//

import SwiftUI

struct RecipeRow: View {
    var recipe: Recipe
    
    var body: some View {
        HStack {
            Image(recipe.imagen)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 50, height: 80)
            VStack(alignment: .leading, spacing: 2) {
                Text(recipe.name)
                    .font(.title2.weight(.semibold))
                Group {
                    Text(recipe.category!)
                    Text(recipe.country!)
                }
                .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.vertical, 4)
    }
}


struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(recipe: recipeList[0])
            .previewLayout(.sizeThatFits)
    }
}
