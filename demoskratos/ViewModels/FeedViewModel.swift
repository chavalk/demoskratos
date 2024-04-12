//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

class FeedViewModel: ObservableObject {
    @Published var activities = [Activity]()
    
    private var db = Firestore.firestore()
    
    func fetchActivity() {
        db.collection("activity")
            .order(by: "timestamp", descending: true)
            .limit(to: 30)
            .addSnapshotListener({ snapshot, _ in
                guard let documents = snapshot?.documents else { return }
                let activities = documents.compactMap({ try? $0.data(as: Activity.self) })
                self.activities = activities
            })
    }
}
