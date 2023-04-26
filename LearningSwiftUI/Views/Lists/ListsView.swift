//
//  ListsView.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 15/04/23.
//

// MARK: - Lista -

import SwiftUI

private let programmers = [Programmer(id: 1, name: "Miguel Ulloa", language: "Swift and Phyton", avatar: Image(systemName: "person"), favourite: true),
                           Programmer(id: 2, name: "Angel Martinez", language: "Java", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 3, name: "Pablo", language: "Golang", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 4, name: "Pedro", language: "Kotlin", avatar: Image(systemName: "person.fill"), favourite: true), Programmer(id: 5, name: "Alfredo", language: "Ensamblador", avatar: Image(systemName: "person.fill"), favourite: false)
                          
]

struct ListsView: View {
    var body: some View {
        List(programmers, id: \.id) {programmer in
            RowView(programmer: programmer)
        }
    }
}

// Dentro de List se especifica que mostrar, es decir, se va a mostrar el RowView y mediante un bucle, esta celda se mostrara el numero de programadores que contenga el array programmers

struct ListsView_Previews: PreviewProvider {
    static var previews: some View {
        ListsView()
    }
}
