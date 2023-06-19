//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

class FeedViewModel: ObservableObject {
    @Published var votes = [Vote]()
    
    init() {
        fetchVotes()
    }
    
    func fetchVotes() {
        Firestore.firestore().collection("votes").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let votes = documents.compactMap({ try? $0.data(as: Vote.self) })
            self.votes = votes
        }
    }
}
