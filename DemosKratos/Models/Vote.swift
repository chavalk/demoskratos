//
//  Vote.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

struct Vote: Codable, Identifiable {
    let bill: String
    let billTitle: String
    let billURL: String
    let id: String
    let question: String
    let repLastName: String
    let rollCallNumber: Int
    let timestamp: Timestamp
    let vote: String
}
