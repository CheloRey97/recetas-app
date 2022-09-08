//
//  RecetaView.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import SwiftUI

struct DetailView: View {
    let recipe: Recipe

    var body: some View {
        ScrollView {
            ImageBanner(receta: recipe)
            VStack(alignment: .leading, spacing: 10) {
                Title(title: recipe.name)
                HStack{
                    FlagPortrait(flag: recipe.flag, size: 35)
                    RecipeTitleInfo(category: recipe.category!, origin: "\(recipe.country!), \(recipe.city!)")
                    Spacer()
                    ShowMapButton(city: recipe.city, country: recipe.country, recipeName: recipe.name)
                }
                Divider()
                Subtitle(subtitle: "Ingredientes:")
                VStack(alignment: .leading, spacing: 5) {
                    if(recipe.ingredients.count > 0){
                        ForEach(recipe.ingredients, id: \.self){ ingrediente in
                            Text("- \(ingrediente)")
                                .padding(.leading, 20)
                                .font(.custom("Arial", size: 15))
                        }
                    } else{
                        Text("Ingredientes no definidos")
                            .padding(.leading, 20)
                            .font(.custom("Arial", size: 15))
                            .foregroundColor(.gray)
                    }
                }
                Divider()
                Subtitle(subtitle: "Preparación:")
                Description(text: recipe.description!)
            }.padding()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BtnBack())
    }
}

struct RecetaView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(recipe: recipeList[0])
    }
}
