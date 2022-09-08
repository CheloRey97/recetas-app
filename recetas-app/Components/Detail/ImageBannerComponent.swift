//
//  RecipeBannerComponent.swift
//  recetas-app
//
//  Created by Marcelo Rey on 05-09-22.
//

import SwiftUI

struct ImageBanner: View {
    let receta: Recipe;
    
    //Obtiene la posición del scroll
    private func getScrollOffset(_ geometry: GeometryProxy) -> CGFloat {
        geometry.frame(in: .global).minY
    }
    
    private func getOffsetForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        
        // Cuando la imagen es arrastrada hacia abajo la mantiene en su sitio
        if offset > 0 {
            return -offset
        }
        
        return 0
    }
    
    //Modifica el tamaño de la imagen cuando es arrastrada hacia abajo
    private func getHeightForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        let imageHeight = geometry.size.height

        if offset > 0 {
            return imageHeight + offset
        }

        return imageHeight
    }
    
    //Añade un blur a la imagen a medida que se navega hacia abajo.
    private func getBlurRadiusForImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = geometry.frame(in: .global).maxY
        let height = geometry.size.height
        let blur = (height - max(offset, 0)) / height
        //Los valores oscilarán desde 0-6
        return blur * 6
    }
    
    var body: some View {
        //Se utiliza contenedor GeometryReader para modificar las propiedades y el comportamiento del banner principal de la vista dependiendo de la posicion del scroll
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 10) {
                Image(receta.imagen)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: self.getHeightForHeaderImage(geometry))
                    .blur(radius: self.getBlurRadiusForImage(geometry))
                    .clipped()
                    .offset(x: 0, y: self.getOffsetForHeaderImage(geometry))
            }
        } .frame(height: 300)
    }
}

struct ImageBanner_Previews: PreviewProvider {
    static var previews: some View {
        ImageBanner(receta: recipeList[0])
    }
}
