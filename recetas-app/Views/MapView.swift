//
//  MapView.swift
//  recetas-app
//
//  Created by Marcelo Rey on 06-09-22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject var mapAPI: MapAPI
    @State var city: String = ""
    @State var country: String = ""
    var recipeName: String = ""
    
    var body: some View {
        VStack (alignment: .leading) {
            Title5(text: "\(city), \(country)").padding(.leading)
            //Mapa por defecto
            Map(coordinateRegion : $mapAPI.region, annotationItems: mapAPI.locations) { location in
                MapMarker(coordinate: location.coordinate, tint: .blue)
            }
        }.navigationTitle(recipeName)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(mapAPI: MapAPI(), city: "Valdivia", country: "Chile", recipeName: "Lasagna")
    }
}
