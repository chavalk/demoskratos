//
//  Representative.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/16/23.
//

import Foundation

struct Representative: Codable {
    let uid: String
    let name: String
    let district: Int
    let position: String
    let profileImageUrl: String
    let state: String
    let districtPopulation: Int
    let districtVap: Int
}
