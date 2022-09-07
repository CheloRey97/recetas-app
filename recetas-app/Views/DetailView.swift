//
//  RecetaView.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import SwiftUI

struct RecetaView: View {
    let receta: Receta

    var body: some View {
        ScrollView {
            ImageBanner(receta: receta)
            
            VStack(alignment: .leading, spacing: 10) {
                Title(title: receta.name)
                HStack{
                    FlagPortrait(flag: receta.flag, size: 35)
                    RecipeTitleInfo(category: receta.category!, origin: receta.country!)
                    Spacer()
                    ShowMapButton()
                }
                Divider()
                Subtitle(subtitle: "Ingredientes:")
                VStack(alignment: .leading, spacing: 5) {
                    if(receta.ingredients.count > 0){
                        ForEach(receta.ingredients, id: \.self){ ingrediente in
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
                Description(text: receta.description!)
            }.padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RecetaView_Previews: PreviewProvider {
    static var previews: some View {
        RecetaView(receta: listaRecetas[0])
    }
}
