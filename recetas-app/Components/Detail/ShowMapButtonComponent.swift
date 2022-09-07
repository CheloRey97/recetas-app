//
//  ShowMapButtonComponent.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import SwiftUI
import MapKit

struct ShowMapButton: View {
    @StateObject private var mapAPI = MapAPI()
    var city: String? = ""
    var country: String? = ""
    var recipeName: String
    
    var body: some View {
        NavigationLink(destination: MapView(mapAPI: mapAPI, city: self.city!, country: self.country!, recipeName: self.recipeName).onAppear() {
            self.mapAPI.getLocation(address: "\(self.city!) \(self.country!)", delta: 0.5)
        }){
            Label("Ver en mapa", systemImage: "map.circle")
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
        ShowMapButton(city: "Valdivia", country: "Chile", recipeName: "Lasagna")
    }
}
