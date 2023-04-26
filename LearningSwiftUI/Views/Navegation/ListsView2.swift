//
//  ListView2.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 16/04/23.
//

import SwiftUI

private let programmers = [Programmer(id: 1, name: "Miguel Ulloa", language: "Swift and Phyton", avatar: Image(systemName: "person"), favourite: true),
                           Programmer(id: 2, name: "Angel Martinez", language: "Java", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 3, name: "Pablo", language: "Golang", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 4, name: "Pedro", language: "Kotlin", avatar: Image(systemName: "person.fill"), favourite: false), Programmer(id: 5, name: "Sara", language: "Ensamblador", avatar: Image(systemName: "person.fill"), favourite: true)
                          
]

struct ListsView2: View {
    
    var body: some View {
        
        VStack {

            NavigationView {
                List(programmers, id: \.id) {programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer)){
                        RowView2(programmer: programmer)
                    }
                }
                .navigationTitle("Programmers")
            }
            
        }
        

    }
}

    // Dentro de List se especifica que mostrar, es decir, se va a mostrar el RowView y mediante un bucle, esta celda se mostrara el numero de programadores que contenga el array programmers
    // NavigationView necesita una instancia permite la navegacion entre pantallas
        // NavegationLink permite realizar pasar a otra vista cuando se presiona una celda
        // Y la view ListDetailView se le pasa el objeto de tipo programador para que muestre su respectiva informacion

struct ListView2_Previews: PreviewProvider {
    static var previews: some View {
        ListsView2()
    }
}
