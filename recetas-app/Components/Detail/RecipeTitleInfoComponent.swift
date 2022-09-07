//
//  RecipeTitleInfo.swift
//  recetas-app
//
//  Created by Marcelo Rey on 04-09-22.
//

import SwiftUI

struct RecipeTitleInfo: View {
    var category: String? = ""
    var origin: String? = ""
    
    var body: some View {
        VStack (alignment: .leading){
            Title5(text: "Tipo: \(category!)")
            Title5(text: "Origen: \(origin!)")
        }
    }
}

struct RecipeTitleInfo_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTitleInfo(category: "Categoria", origin: "Pais")
    }
}
