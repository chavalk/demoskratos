//
//  MapView.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/24/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let mapView = MKMapView()
    
    func makeUIView(context: Context) -> some UIView {
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

extension MapView {
    
    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: MapView
        
        init(parent: MapView) {
            self.parent = parent
            super.init()
        }
    }
}
