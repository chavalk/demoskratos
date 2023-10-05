//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

class FeedViewModel: ObservableObject {
    @Published var votes = [Vote]()
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
            
            self.fetchVotes()
        }
    }
    
    func fetchVotes() {
        Firestore.firestore().collection("votes").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let votes = documents.compactMap({ try? $0.data(as: Vote.self) })
            self.votes = votes
            let yesVotes = self.votes[0].yesVotes
            let repFullName = self.user?.usHouseRepresentative
            let repLastName = repFullName?.components(separatedBy: " ").last ?? ""
            if yesVotes.contains(repLastName) {
                self.votes[0].billTitle = "Voted Yes \(votes[0].question) of \(votes[0].bill):\(votes[0].billTitle)"
            }
        }
    }
    
    
}
