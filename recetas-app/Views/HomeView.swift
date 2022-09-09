//
//  ContentView.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            AllRecipesView()
                .tabItem {
                    Label("Inicio", systemImage: "house.circle")
                }
            Search()
                .tabItem {
                    Label("Buscar", systemImage: "magnifyingglass.circle")
                }.accessibilityLabel("searchTab")
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
