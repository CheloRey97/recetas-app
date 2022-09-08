//
//  Subtitle.swift
//  recetas-app
//
//  Created by Marcelo Rey on 03-09-22.
//

import SwiftUI

let mainTitleFont: String = "Arial"

struct Title: View {
    var title: String = "";
    var body: some View {
        Text(title)
            .font(.title.weight(.bold))
    }
}

struct Subtitle: View {
    var subtitle: String = "";
    var body: some View {
        Text(subtitle)
            .font(.title2.weight(.bold))
    }
}

struct Title5: View {
    var text: String = "";
    var body: some View {
        Text(text)
            .font(.custom(mainTitleFont, size: 13))
            .foregroundColor(.secondary)
    }
}

struct Description: View {
    var text: String = "";
    var body: some View {
        Text(text)
            .font(.custom(mainTitleFont, size: 14))
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct Subtitle_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading, spacing: 10){
            Title(title: "Titulo Ejemplo")
            Subtitle(subtitle: "Subtitulo Ejemplo")
            Title5(text: "Titulo Ejemplo")
            Description(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sapien sem, commodo ac metus sed, dignissim cursus neque. Phasellus rutrum eros efficitur sapien lobortis lobortis. Suspendisse dapibus rhoncus arcu vel pellentesque. Aliquam justo ipsum, dignissim vel fermentum venenatis, sagittis id odio. Vivamus euismod tellus eu risus dictum mollis. Ut eget mi imperdiet, ultrices erat ut, tristique lacus. Integer volutpat urna vitae molestie egestas. Cras dui lorem, sagittis vel sagittis non, tristique nec nisi. Aenean vitae dui vel felis tincidunt mattis. Curabitur tristique est dolor, accumsan elementum turpis rutrum id. Curabitur pulvinar nisl vitae leo tempus, eget efficitur libero iaculis.")
        }.padding()
    }
}
