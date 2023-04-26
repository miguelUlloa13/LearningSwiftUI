//
//  UserData.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 25/04/23.
//

import Foundation

    // @StateObject
        // Tipo por referencia
        // Se usa en la vista propietaria de la variable compleja
        // Para definir un objeto de tipo mutable que se utilice en una view y modificarlo se implementa el protocolo ObservableObject y las propiedades deben ser @Published

class UserData: ObservableObject {
    @Published var name: String = "Miguel Ulloa"
    @Published var age: Int = 24
}

    // La clase UserData va a estar observando modificaciones (ObservableObject) en propiedades que va a publicar (@Published) su valor para que una vista pueda consumirlar, leerlas y modificarlas
