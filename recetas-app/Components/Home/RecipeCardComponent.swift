//
//  RecetaCard.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import SwiftUI

struct RecetaCard: View {
    let receta: Receta
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            NavigationLink(destination: RecetaView(receta: receta)){
            ZStack(alignment: .bottom){
                Image(receta.imagen)
                    .resizable()
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(receta.name)
                        .bold()
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            }
            .shadow(radius: 3)
        }
        .cornerRadius(20)
    }
}

struct RecetaCard_Previews: PreviewProvider {
    static var previews: some View {
        RecetaCard(receta: listaRecetas[3])
    }
}
