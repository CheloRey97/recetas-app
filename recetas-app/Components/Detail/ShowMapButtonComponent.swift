//
//  ShowMapButtonComponent.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import SwiftUI

struct ShowMapButton: View {
    var body: some View {
        Button(action: showInMap) {
            Text("Mostrar en mapa")
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .font(.custom("Arial", size: 13))
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .shadow(radius: 2)
        }
    }
}

struct ShowMapButton_Previews: PreviewProvider {
    static var previews: some View {
        ShowMapButton()
    }
}
