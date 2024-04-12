//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase
import SwiftUI

class FeedViewModel: ObservableObject {
    @Published var activities = [Activity]()
    var userSession: FirebaseAuth.User?
    var user: User?
    
    init() {
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func fetchUser() {
        guard let uid = self.userSession?.uid else { return }
        Firestore.firestore().collection("users").document(uid).getDocument { snapshot, _ in
            guard let snapshot = snapshot else { return }
            
            guard let user = try? snapshot.data(as: User.self) else { return }
            self.user = user
            
            self.fetchActivity()
        }
    }
    
    func fetchActivity() {
        Firestore.firestore().collection("activity").order(by: "timestamp", descending: true).getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let activities = documents.compactMap({ try? $0.data(as: Activity.self) })
            self.activities = activities
        }
    }
}
