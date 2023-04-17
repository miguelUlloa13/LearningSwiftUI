//
//  MainView.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 15/04/23.
//

// MARK: - COMBINACION DE VISTAS -

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView().frame(height: 500)
                ImageView().offset(y: -150)
                Divider().padding(5)
                ContentView()
            }
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        // Visualizar distintos dispositivos
        Group {
            MainView()
            MainView()
                .previewDevice("iPad Pro (12.9-inch) (6th generation)")
        }
    }
}
