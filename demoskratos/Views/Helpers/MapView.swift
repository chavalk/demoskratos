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
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 29.97046, longitude: -98.90400),
            span: MKCoordinateSpan(latitudeDelta: 1.90, longitudeDelta: 0.26)) 
        mapView.setRegion(region, animated: true)
        mapView.delegate = context.coordinator
        mapView.addOverlays(self.parseGeoJSON())
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
        
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            
            if let polygon = overlay as? MKPolygon {
                let renderer = MKPolygonRenderer(polygon: polygon)
                renderer.fillColor = UIColor.red.withAlphaComponent(0.2)
                renderer.strokeColor = UIColor.red
                renderer.lineWidth = 2.0
                return renderer
            }
            return MKOverlayRenderer(overlay: overlay)
        }
    }
}
