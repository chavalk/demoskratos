//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase
import SwiftUI

class FeedViewModel: ObservableObject {
    @Published var votes = [Vote]()
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
            
            self.fetchVotes()
            self.fetchActivity()
        }
    }
    
    func fetchVotes() {
        Firestore.firestore().collection("votes").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let votes = documents.compactMap({ try? $0.data(as: Votes.self) })
            for index in votes.indices.reversed() {
                self.votes.append(contentsOf: votes[index].votes)
            }
            for index in 0..<self.votes.count {
                let vote = self.votes[index]
                
                let yesVotes = vote.yesVotes
                let noVotes = vote.noVotes
                let notVoting = vote.notVoting
                let repFullName = self.user?.usHouseRepresentative
                let repLastName = repFullName?.components(separatedBy: " ").last ?? ""
                if yesVotes.contains(repLastName) {
                    self.votes[index].billTitle = "Voted Yes \(vote.question) of \(vote.bill):\(vote.billTitle)"
                } else if noVotes.contains(repLastName) {
                    self.votes[index].billTitle = "Voted No \(vote.question) of \(vote.bill):\(vote.billTitle)"
                } else if notVoting.contains(repLastName) {
                    self.votes[index].billTitle = "Did not vote on \(vote.question) of \(vote.bill):\(vote.billTitle)"
                }
            }
        }
    }
    
    func fetchActivity() {
        Firestore.firestore().collection("activity").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let activities = documents.compactMap({ try? $0.data(as: Activities.self) })
            self.activities = activities[0].activity
        }
    }
}
