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
    var address = ""
    var title: String
    
    var body: some View {
        NavigationLink(destination: MapView(mapAPI: mapAPI, location: self.address, title: self.title).onAppear() {
            self.mapAPI.getLocation(address: self.address, delta: 0.5)
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
        ShowMapButton(address: "Chile", title: "Lasagna")
    }
}
