//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

class FeedViewModel: ObservableObject {
    @Published var activities = [Activity]()
    
    func fetchActivity() {
        Firestore.firestore().collection("activity").order(by: "timestamp", descending: true).addSnapshotListener({ snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let activities = documents.compactMap({ try? $0.data(as: Activity.self) })
            self.activities = activities
        })
    }
}
