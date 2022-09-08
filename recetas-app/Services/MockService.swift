//
//  MockService.swift
//  recetas-app
//
//  Created by Marcelo Rey on 08-09-22.
//

import Foundation

class MockService {
    public static let shared = MockService()
    
    func getAllRecipes() -> [RecipeCard] {
        return [
            RecipeCard(name: "Lasagna", category: "Plato", ingredients: [], imagen: "lasagna", country: "Italia", city: "Napoles"),
            RecipeCard(name: "Pizza Napolitana", category: "Aperitivo", ingredients: [], imagen: "pizza", country: "Italia", city: "Napoles"),
            RecipeCard(name: "Puré de papas", category: "", ingredients: [], imagen: "", country: "", city: ""),
            RecipeCard(name: "Sashimi", category: "", ingredients: [], imagen: "", country: "", city: ""),
            RecipeCard(name: "Tiramisú", category: "", ingredients: [], imagen: "", country: "", city: ""),
//            RecipeCard(name: "", category: "", ingredients: [], imagen: "", country: "", city: ""),
//            RecipeCard(name: "", category: "", ingredients: [], imagen: "", country: "", city: ""),
        ]
    }
    
    func getRecipe() -> [Recipe] {
        return [
            Recipe(name: "Lasagna", category: "Plato",
                   ingredients: [ "Queso Parmesano 200g", "Láminas de lasaña secas", "Pulpa de cerdo 400g"],
                   description: "En la jarra agregar 200 g. de queso parmesano en trozos. Triturar durante 20 segundos a velocidad 10. Traspasar el queso rallado a un pocillo. En la jarra, sin necesidad de limpiarla, agregar 400 g de pulpa de cerdo en trozos 400 g de carne de vacuno en trozos de 6x6 cm. Moler durante 30 segundos a velocidad 7. Traspasar la mezcla a un recipiente y reservar. Agregar en la jarra 200 g de apio (o pimentón), zanahoria y cebolla, cortados en trozos 50 ml de aceite de oliva Picar durante5 segundos a velocidad 8. Con ayuda de la espátula, bajar la mezcla adherida a la jarra. Sofreír durante5 minutos, velocidad 2 a 100 °C Añadir la carne reservada. Cocinar durante 5 minutos, velocidad 1 a 120 °C......",
                   imagen: "lasagna", country: "Italia", city: "Napoles", flag: "it")
        ]
    }
}
