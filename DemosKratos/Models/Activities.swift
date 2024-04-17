//
//  Activities.swift
//  demoskratos
//
//  Created by Jose Garcia on 11/14/23.
//

import Foundation

struct Activities: Codable, Identifiable {
    let id: String
    let activity: [Activity]
}
