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
    
    func signIn(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Signed user in successfully")
            print("DEBUG: User id \(result?.user.uid)")
        }
    }
    
    func registerUser(withEmail email: String, password: String, fullName: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign up with error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: User id \(result?.user.uid)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            print("DEBUG: Did sign out with firebase")
        } catch let error {
            print("DEBUG: Failed to sign out with error: \(error.localizedDescription)")
        }
    }
}
