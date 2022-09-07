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
    @State var location = ""
    var title: String = ""
    
    var body: some View {
        VStack (alignment: .leading) {
            Subtitle(subtitle: title).padding(.leading)
            //Mapa por defecto
            Map(coordinateRegion : $mapAPI.region, annotationItems: mapAPI.locations) { location in
                MapMarker(coordinate: location.coordinate, tint: .blue)
            }
        }.navigationTitle(location)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(mapAPI: MapAPI(), location: "Chile", title: "Lasagna")
    }
}
