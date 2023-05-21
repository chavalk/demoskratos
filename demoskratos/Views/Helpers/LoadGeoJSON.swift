//
//  LoadGeoJSON.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/21/23.
//

import MapKit

func loadGeoJSON() {
    guard let url = Bundle.main.url(forResource: "map", withExtension: "json") else {
        fatalError("Unable to get GeoJSON")
    }
    
    var geoJSON = [MKGeoJSONObject]()
    var overlays = [MKOverlay]()
    
    do {
        let data = try Data(contentsOf: url)
        geoJSON = try MKGeoJSONDecoder().decode(data)
    } catch {
        fatalError("Unable to decode JSON")
    }
}
