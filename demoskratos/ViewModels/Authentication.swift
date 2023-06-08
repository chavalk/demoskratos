//
//  Authentication.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/6/23.
//

import Foundation
import Firebase

class Authentication: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func registerUser(withEmail email: String, password: String) {
        
    }
}
