//
//  BtnBack.swift
//  recetas-app
//
//  Created by Marcelo Rey on 07-09-22.
//

import SwiftUI

struct BtnBack: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
            Image(systemName: "chevron.left")
                .aspectRatio(contentMode: .fit)
                Text("Volver")
                   
            }
            .foregroundColor(.white)
            .padding(8)
            .background(Color.black.opacity(0.85))
            .cornerRadius(20)
        }
    }
}

struct BtnBack_Previews: PreviewProvider {
    static var previews: some View {
        BtnBack()
    }
}
