//
//  ListView4.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 22/04/23.
//

import SwiftUI

final class ProgrammerModelData: ObservableObject {

    @Published var programmers = [Programmer(id: 0, name: "Miguel Ulloa", language: "Swift and Phyton", avatar: Image(systemName: "person"), favourite: true),
                           Programmer(id: 1, name: "Angel Martinez", language: "Java", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 2, name: "Pablo", language: "Golang", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 3, name: "Pedro", language: "Kotlin", avatar: Image(systemName: "person.fill"), favourite: false),
                           Programmer(id: 4, name: "Sara", language: "Ensamblador", avatar: Image(systemName: "person.fill"), favourite: true)
                          
    ]
    // programmers pasa a ser var para que pueda mutar su valor favourite
}


struct ListView4: View {
    
    @EnvironmentObject var programmerModelData: ProgrammerModelData
    @State private var showFavorites: Bool = false
    
    private var filteredProgrammers: [Programmer] {
        return programmerModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favourite
            
        }
        // La variable filteredProgrammers es un closure que retorna los programadadores
        
    }
    
    var body: some View {
        
        NavigationView {
        
            VStack {
                    // Toggle o switch en UIKit
                Toggle(isOn: $showFavorites) {
                    // Toggle requiere un valor asociado a un estado y que pueda ser modificado (showFavorites), no un valor estatico como True
                    // showFavorites debe tener el prefijo dolar $ para que pueda acceder a su valor de forma mutable
                    // cuando el toggle esta activo, showFavorites pasa a true
                    Text("Show favorites")
                }
            
                List(filteredProgrammers, id: \.id) {programmer in
                    NavigationLink(destination: ListDetailView3(programmer: programmer, favorite: $programmerModelData.programmers[programmer.id].favourite)){
                        RowView4(programmer: programmer)
                    }
                }
                .navigationTitle("Programmers")
            }
            
        }
    }
}

struct ListView4_Previews: PreviewProvider {
    static var previews: some View {
        ListView4().environmentObject(ProgrammerModelData())
    }
}
