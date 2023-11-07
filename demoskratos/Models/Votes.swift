//
//  Votes.swift
//  demoskratos
//
//  Created by Jose Garcia on 11/5/23.
//

import Foundation

struct Votes: Codable, Identifiable {
    let id: String
    let votes: [Vote]
}
