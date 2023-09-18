//
//  Official.swift
//  demoskratos
//
//  Created by Jose Garcia on 9/15/23.
//

import Foundation

struct OfficialsResponse: Codable {
    let officials: [Official]
}

struct Official: Codable {
    let name: String?
}
