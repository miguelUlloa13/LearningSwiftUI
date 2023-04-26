//
//  BindingView.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 25/04/23.
//

import SwiftUI

    // @Binding
        // Tipo por valor
        // Se usa en la vista que recibe el envio de la variable

    // @ObservedObject
        // Tipo por referencia
        // Se usa en la vista que recibe el envio de la variable
        // Similar a @Binding pero es para variables complejas
struct BindingView: View {
    
    @Binding var value:Int
    @ObservedObject var myUser: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Text("El valor actual es: \(value)")
            Button("Sumar TRES") {
                value += 3
            }
            Button("Actualizar nombre a: Ramon Valdez y edad: 68 años") {
                myUser.name = "Ramon Valdez"
                myUser.age = 68
            }
            NavigationLink(destination: EnvironmentView(), tag: 1, selection: $selection) {
                
                Button("Ir a EnvironmentView"){
                    selection = 1
                }
                
            }
            
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), myUser: UserData())
    }
}
