//
//  Receta.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import Foundation

//Estructuras y funciones

struct Receta: Identifiable {
    var id = UUID()
    var name:  String
    var category: String? = "Sin categoría"
    var ingredients: [String]
    var description: String? = "Sin descripción"
    var imagen: String
    var country: String? = "Desconocido"
    var city: String? = ""
    var flag: String? = ""
}

var listaRecetas = [
    Receta(name: "Lasagna Bolognesa", category: "Plato", ingredients: ["Carne", "Salsa de Tomates", "Crema"], description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sapien sem, commodo ac metus sed, dignissim cursus neque. Phasellus rutrum eros efficitur sapien lobortis lobortis. Suspendisse dapibus rhoncus arcu vel pellentesque. Aliquam justo ipsum, dignissim vel fermentum venenatis, sagittis id odio. Vivamus euismod tellus eu risus dictum mollis. Ut eget mi imperdiet, ultrices erat ut, tristique lacus. Integer volutpat urna vitae molestie egestas. Cras dui lorem, sagittis vel sagittis non, tristique nec nisi. Aenean vitae dui vel felis tincidunt mattis. Curabitur tristique est dolor, accumsan elementum turpis rutrum id. Curabitur pulvinar nisl vitae leo tempus, eget efficitur libero iaculis.orem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sapien sem, commodo ac metus sed, dignissim cursus neque. Phasellus rutrum eros efficitur sapien lobortis lobortis. Suspendisse dapibus rhoncus arcu vel pellentesque. Aliquam justo ipsum, dignissim vel fermentum venenatis, sagittis id odio. Vivamus euismod tellus eu risus dictum mollis. Ut eget mi imperdiet, ultrices erat ut, tristique lacus. Integer volutpat urna vitae molestie egestas.", imagen: "lasagna", country: "Italia", city: "Napoles", flag: "it"),
    Receta(name: "Pizza Napolitana", category: "Aperitivo", ingredients: [], description: "La pizza...", imagen: "pizza", country: "Italia", city: "Napoles", flag: "it"),
    Receta(name: "Tiramisú", category: "Postre", ingredients: [], description: "El tiramisú...", imagen: "tiramisu", country: "Francia", city: "Napoles", flag: "fr"),
    Receta(name: "Sashimi", category: "Aperitivo", ingredients: [], description: "El sashimi...", imagen: "sashimi", country: "Japon", city: "Napoles", flag: "jp"),
    Receta(name: "Pure de papas", category: "Plato", ingredients: [], description: "La lasagna...", imagen: "puredepapas", country: "Chile", city: "Valdivia", flag: "cl"),
]
