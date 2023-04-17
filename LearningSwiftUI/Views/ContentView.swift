//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 08/04/23.
//

import SwiftUI

    // Nombre de la vista "ContentView" que conforma el protocolo "view" como en UIKit (class ViewController: UIViewController)
struct ContentView: View {
    var body: some View {   // Variable "body" que devuelve una vista "View"
        VStack(alignment: .center, spacing: 1) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.purple)
            Text("Hello, world! It's me,\nSwiftUI")
                .font(.title)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
            
            Spacer() // Sirve para que los elementos ocupen el mayoe espacio posible
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity)
                    .background(.gray)
                    .padding()
                Text("")
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity)
                    .background(.green)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity)
                    .background(.red)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity)
                    .background(.blue)
                    .padding(80)
            }
            
            Text("Hola, mundo! Soy yo,\nSwiftUI").padding()
                .background(Color.gray)
            
            Spacer()
            
            ZStack {
                Text("Hola, texto atras")
                Text("Adios, texto adelante")
            }
            
            Text("Salut monde! C'est moi, \nSwiftUI").padding()
            
            
            Text("vista 9")
            // Text("vista 10")
            // Text("vista 11")
            // Text("vista 12") // En un stack solo se puede devolver un maximo de 10 vistas
            
            VStack {    // VStack tambien cuenta como vista
                Text("vista 10") // Para seguir agragando mas vistas, basta con poner otro stack
            }

            
            
        }

        .padding()  // padding sirve para dar margen, sin esto, a vista llegaria hasta los bordes
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Los cambia hechos hechos en el canvas (inspector de atributos) se refleja en el codigo, y viceversa

// Live permite interactuar de forma real con la vista, por ejemplo: hacer click en botones

// Si se presiona command y se presiona sobre una vista se puede acceder a una acciones rapidas

// VStack sirve para colocar views de forma vertical
// Se puede modificar las propiedades del VStack, aliment y spacing
