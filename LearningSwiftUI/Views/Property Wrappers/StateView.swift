//
//  StateView.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 25/04/23.
//

import SwiftUI

// @State
    // Tipo por valor
    // Se usa en la vista propietaria (donde se definio) de la variable
    // Se utiliza cuando el valor de una propiedad va a cambiar

// @StateObject
    // Tipo por referencia
    // Se usa en la vista propietaria de la variable compleja
    // Similar a @State pero es para variables complejas

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var myUser: UserData = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("El valor actual es: \(value)")
                Button("Sumar UNO") {
                    value += 1
                }
                Text("Mi nombre es \(myUser.name) y mi edad es \(myUser.age)")
                Button("Actualizar datos") {
                    myUser.name = "Mario Bros"
                    myUser.age = 41
                }
                NavigationLink(destination: BindingView(value: $value, myUser: myUser), tag: 1, selection: $selection) {
                    
                    Button("Ir a BindingView"){
                        selection = 1
                    }
                    
                }
            }.navigationTitle("State view")
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
