//
//  ContentViewTwo.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 09/04/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("hippo").resizable().frame(width: 300, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3)).shadow(color: .gray, radius: 10)
            Image(systemName: "trash.circle.fill").resizable().padding(50).frame(width: 300,height: 300).background(Color.white).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 10)).shadow(radius: 30).foregroundColor(.green)
        }

    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

// Con el constructor Image se coloca la imagen, por defecto en SwiftUI la imagen ocupara el maximo tamaño posible.
// .resizble() la imagen entra dentro de los margenes del iphone pero puede deformarse
// scaledToFill() la imagen ocupa lo maximo a lo alto
// .scaledToFill() la imagen ocupa lo maximo a lo ancho
// .frame (width: , height: ) Dar tamaño fijo
// .clipShape(Circle()) Sirve para recortar la imagen, por ejemplo con Circle() la imagen se recorta en forma de circulo
// overlay() aplicar borde
// shadow() aplicar sombra
