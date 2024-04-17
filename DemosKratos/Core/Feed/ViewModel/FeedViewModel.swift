//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

class FeedViewModel: ObservableObject {
    @Published var activities = [Activity]()
    private var lastDocument: DocumentSnapshot? = nil
    
    private var db = Firestore.firestore()
    
    init() {
        fetchActivity()
        
    }
    
    func fetchActivity() {
        db.collection("activity")
            .order(by: "timestamp", descending: true)
            .limit(to: 10)
            .getDocuments { snapshot, _ in
                self.activities = []
                guard let documents = snapshot?.documents else { return }
                let activities = documents.compactMap({ try? $0.data(as: Activity.self) })
                self.activities = activities
                self.lastDocument = documents.last
                print("Call to database Feed View Model fetchActivity(): \(self.activities.count)")
            }
    }
    
    func fetchActivityWhenUserScrolls() {
        if let lastDocument {
            db.collection("activity")
                .order(by: "timestamp", descending: true)
                .limit(to: 10)
                .start(afterDocument: lastDocument)
                .getDocuments { snapshot, _ in
                    guard let documents = snapshot?.documents else { return }
                    let activities = documents.compactMap({ try? $0.data(as: Activity.self) })
                    self.activities.append(contentsOf: activities)
                    self.lastDocument = documents.last
                    print("Call to database Feed View Model fetchActivityWhenUserScrolls(): \(self.activities.count)")
                }
        }
    }
}
