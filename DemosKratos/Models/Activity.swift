//
//  Activity.swift
//  demoskratos
//
//  Created by Jose Garcia on 11/14/23.
//

import Foundation

struct Activity: Codable, Identifiable, Equatable {
    let id: String
    let floorActivity: String
    let floorBill: String
    let floorTime: String
    let date: String
}
