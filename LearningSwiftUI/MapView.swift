//
//  ContentViewThree.swift
//  LearningSwiftUI
//
//  Created by Miguel Angel Bric Ulloa on 12/04/23.
//
// MARK: - MAPVIEW -
// MARK: USO DE SWIFTUI Y UIKIT

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 19.25, longitude: -99.08) // coordenadas
        let span = MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30)  // extension
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}
    // El tipo de vista que se va a retornar cambia de SwiftUI a UIKit
        // Con el protocolo UIViewRepresentable permite embeber una vista de tipo UIKit dentro de un objeto vista SwiftUI
        // Con la funcion makeUIView permite retornar el tipo de vista UIKit
 
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
