//
//  RecetaCard.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import SwiftUI

struct RecetaCard: View {
    let receta: Recipe
    let cardWidth: CGFloat = 190
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            NavigationLink(destination: DetailView(recipe: receta)){
                ZStack(alignment: .bottom){
                    Image(receta.imagen)
                        .resizable()
                        .frame(width: cardWidth)
                        .scaledToFit()
                    
                    VStack(alignment: .leading) {
                        Text(receta.name)
                            .bold()
                            .multilineTextAlignment(.leading)
                    }
                    .padding()
                    .frame(width: cardWidth, alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                }
                .frame(width: cardWidth, height: 250)
            }
            .shadow(radius: 3)
        }
        .cornerRadius(20)
    }
}

struct RecetaCard_Previews: PreviewProvider {
    static var previews: some View {
        RecetaCard(receta: recipeList[3])
    }
}
