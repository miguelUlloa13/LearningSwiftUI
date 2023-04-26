//
//  ListDetailView3.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 22/04/23.
//

import SwiftUI

struct ListDetailView3: View {
    
    var programmer: Programmer
    @Binding var favorite: Bool
        // Binding es un propiedad que define una variable de tipo @State que permite ser modificada desde diferente clase
    
    var body: some View {
        VStack {
            programmer.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 3)).shadow(color: .gray, radius: 5)
            
            HStack {
                Text(programmer.name)
                    .font(.largeTitle)
                Button {
                    // Accion al boton
                    favorite.toggle()   // metodo toggle es para alternar de verdadero a falso y viceversa
                } label: {
                    // Texto o imagen
                    if favorite {
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star").foregroundColor(.black)
                    }
                }
            }

            Text(programmer.language)
                .font(.title)
            Spacer()
        }
    }
}

struct ListDetailView3_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView3(programmer: Programmer(id: 1, name: "Miguel Ulloa", language: "Swift and Phyton", avatar: Image(systemName: "person.fill"), favourite: true), favorite: .constant(true))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
