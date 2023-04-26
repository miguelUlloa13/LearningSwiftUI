//
//  ListsView3.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 22/04/23.
//

import SwiftUI

private let programmers = [Programmer(id: 1, name: "Miguel Ulloa", language: "Swift and Phyton", avatar: Image(systemName: "person"), favourite: true),
                           Programmer(id: 2, name: "Angel Martinez", language: "Java", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 3, name: "Pablo", language: "Golang", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 4, name: "Pedro", language: "Kotlin", avatar: Image(systemName: "person.fill"), favourite: false), Programmer(id: 5, name: "Sara", language: "Ensamblador", avatar: Image(systemName: "person.fill"), favourite: true)
                          
]

struct ListsView3: View {
    
    @State private var showFavorites: Bool = false
    
    private var filteredProgrammers: [Programmer] {
        return programmers.filter { programmer in
            return !showFavorites || programmer.favourite
            
        }
        // La variable filteredProgrammers es un closure que retorna los programadadores
        
    }
    
    var body: some View {
        
        VStack {
                // Toggle o switch en UIKit
            Toggle(isOn: $showFavorites) {
                // Toggle requiere un valor asociado a un estado y que pueda ser modificado (showFavorites), no un valor estatico como True
                // showFavorites debe tener el prefijo dolar $ para que pueda acceder a su valor de forma mutable
                // cuando el toggle esta activo, showFavorites pasa a true
                Text("Show favorites")
            }
            
            NavigationView {
                List(filteredProgrammers, id: \.id) {programmer in
                    NavigationLink(destination: ListDetailView2(programmer: programmer)){
                        RowView3(programmer: programmer)
                    }
                }
                .navigationTitle("Programmers")
            }
            
        }
    }
}

struct ListsView3_Previews: PreviewProvider {
    static var previews: some View {
        ListsView3()
    }
}
