//
//  FlagPortraitComponent.swift
//  recetas-app
//
//  Created by Marcelo Rey on 04-09-22.
//

import SwiftUI

let url: String = "https://countryflagsapi.com/png/"

struct FlagPortrait: View {
    var flag: String? = ""
    var size: CGFloat? = nil
    
    var body: some View {
        AsyncImage(url: URL(string: "\(url)\(flag!)")) { image in
            image.resizable()
                .scaledToFit()
        } placeholder: {
            Color.gray
        }
        .frame(width: size!, height: size!, alignment: .center)
        .clipShape(RoundedRectangle(cornerRadius: 100))
        .shadow(color: .gray, radius: 1)
    }
}

struct FlagPortrait_Previews: PreviewProvider {
    static var previews: some View {
        FlagPortrait(flag: "jp", size: 100)
    }
}
