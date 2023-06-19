//
//  Vote.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

struct Vote: Codable, Identifiable {
    let id: String
    let name: String
    let profileImageUrl: String
    let text: String
    let timestamp: Timestamp
    let uid: String
}
