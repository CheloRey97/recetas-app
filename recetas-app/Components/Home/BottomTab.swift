//
//  BottomTab.swift
//  recetas-app
//
//  Created by Marcelo Rey on 06-09-22.
//

import SwiftUI

struct BottomTab: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Inicio", systemImage: "house.circle")
                }
            Search()
                .tabItem {
                    Label("Buscar", systemImage: "magnifyingglass.circle")
                }
        }
    }
}

struct BottomTab_Previews: PreviewProvider {
    static var previews: some View {
        BottomTab()
    }
}
