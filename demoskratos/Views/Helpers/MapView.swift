//
//  MapView.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/21/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    private func parseGeoJSON() -> [MKOverlay] {
        guard let url = Bundle.main.url(forResource: "map", withExtension: "json") else {
            fatalError("Unable to get geojson")
        }
        var geoJson = [MKGeoJSONObject]()
        do {
            let data = try Data(contentsOf: url)
            geoJson = try MKGeoJSONDecoder().decode(data)
        } catch {
            fatalError("Unable to decode geojson")
        }
        var overlays = [MKOverlay]()
        for item in geoJson {
            if let feature = item as? MKGeoJSONFeature {
                for geo in feature.geometry {
                    if let multiPolygon = geo as? MKMultiPolygon {
                        overlays.append(multiPolygon)
                    }
                }
            }
        }
        return overlays
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
