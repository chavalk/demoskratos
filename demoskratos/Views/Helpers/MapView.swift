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
    
    func parseGeoJSON() -> [MKOverlay] {
        guard let url = Bundle.main.url(forResource: "map", withExtension: "json") else {
            fatalError("Unable to get geojson")
        }
        var geoJson = [MKGeoJSONObject]()
        do {
            let data = try Data(contentsOf: url)
            geoJson = try MKGeoJSONDecoder().decode(data)
        } catch {
            fatalError("Unable to decode gejson")
        }
        var overlays = [MKOverlay]()
        for item in geoJson {
            if let feature = item as? MKGeoJSONFeature {
                for geo in feature.geometry {
                    if let polygon = geo as? MKPolygon {
                        overlays.append(polygon)
                    }
                }
            }
        }
        return overlays
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
