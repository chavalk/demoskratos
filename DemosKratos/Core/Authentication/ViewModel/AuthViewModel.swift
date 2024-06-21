//
//  Authentication.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/6/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var errorMessage: String = ""
    @Published var showError: Bool = false
    @Published var isLoading: Bool = false
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func signIn(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                self.errorMessage = error.localizedDescription
                self.showError.toggle()
                self.isLoading = false
                print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
                return
            }
            
            self.userSession = result?.user
            print("Call to database from auth view model signIn()")
        }
    }
    
    func registerUser(withEmail email: String, password: String, firstName: String, lastName: String, streetAddress: String, city: String, state: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                self.errorMessage = error.localizedDescription
                self.showError.toggle()
                self.isLoading = false
                print("DEBUG: Failed to sign up with error \(error.localizedDescription)")
                return
            }
            
            guard let firebaseUser = result?.user else { return }
            self.userSession = firebaseUser

            let streetAddressSubstrings = streetAddress.split(separator: " ")
            var formattedStreetAddress = ""
            for substring in streetAddressSubstrings {
                formattedStreetAddress += substring + "%20"
            }
            let citySubstrings = city.split(separator: " ")
            var formattedCity = ""
            for substring in citySubstrings {
                formattedCity += substring + "%20"
            }

            guard let url = URL(string: "https://www.googleapis.com/civicinfo/v2/representatives?key=AIzaSyCn52jw43C-DqjxG7qowS3n2-vvaMlSvcU&address=\(formattedStreetAddress)\(formattedCity)\(state)") else { return }
            
            let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
                guard let data = data, error == nil else { return }
                
                do {
                    let officials = try JSONDecoder().decode(OfficialsResponse.self, from: data)
                    guard let usHouseRepresentativeName = officials.officials[4].name else { return }
                    let nameComponents = usHouseRepresentativeName.components(separatedBy: " ")
                    let usHouseRepresentativeLastName = nameComponents.last
                    let user = User(email: email, firstName: firstName, lastName: lastName, uid: firebaseUser.uid, usHouseRepresentativeName: usHouseRepresentativeName)
                    guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
                    
                    Firestore.firestore().collection("users").document(firebaseUser.uid).setData(encodedUser)
                } catch {
                    print(error.localizedDescription)
                }
            }
            
            task.resume()
            print("Call to database from auth view model registerUser()")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            self.userSession = nil
        } catch let error {
            print("DEBUG: Failed to sign out with error: \(error.localizedDescription)")
        }
    }
}
