//
//  Vote.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

struct Vote: Codable, Identifiable {
    let id: String
    let bill: String
    var billTitle: String
    let noVotes: [String]
    let notVoting: [String]
    let question: String
    let time: String
    let yesVotes: [String]
    let rollCallNumber: Int
}
