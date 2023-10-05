//
//  Vote.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

//struct Vote: Codable, Identifiable {
//    let id: String
//    let name: String
//    let profileImageUrl: String
//    let text: String
//    let timestamp: Timestamp
//    let uid: String
//}

struct Vote: Codable, Identifiable {
    let id: String
    let bill: String
    var billTitle: String
    let noVotes: [String]
    let notVoting: [String]
    let question: String
    let time: String
    let yesVotes: [String]
}
