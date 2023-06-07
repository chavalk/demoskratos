//
//  Authentication.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/6/23.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
}
