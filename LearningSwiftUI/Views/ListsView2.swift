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
    
    @State private var showFavorites: Bool = false
    
    private var filteredProgrammers: [Programmer] {
        return programmers.filter { programmer in
            return !showFavorites || programmer.favourite
        }
    }
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $showFavorites) {
                // Toggle requiere un valor asociado a un estado y que pueda ser modificado (showFavorites), no un valor estatico como True
                // showFavorites debe tener el prefijo dolar para que pueda acceder a su valor de forma mutable
                Text("Show favorites")
            }
            
            NavigationView {
                List(filteredProgrammers, id: \.id) {programmer in
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
    // NavigationView permite la navegacion entre pantallas
        // Y la view ListDetailView se le pasa el objeto de tipo programador para que muestre su respectiva informacion

struct ListView2_Previews: PreviewProvider {
    static var previews: some View {
        ListsView2()
    }
}
