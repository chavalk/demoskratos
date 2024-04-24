//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

class FeedViewModel: ObservableObject {
    @Published var activities = [Activity]()
    @Published var isFetching: Bool = true
    @Published var paginationDoc: QueryDocumentSnapshot?
    
    @MainActor
    func fetchActivity() async {
        do {
            var query: Query!
            
            // Implement pagination
            if let paginationDoc {
                query = Firestore.firestore().collection("activity")
                    .order(by: "timestamp", descending: true)
                    .start(afterDocument: paginationDoc)
                    .limit(to: 10)
            } else {
                query = Firestore.firestore().collection("activity")
                    .order(by: "timestamp", descending: true)
                    .limit(to: 10)
            }
            
            let docs = try await query.getDocuments()
            let fetchedActivities = docs.documents.compactMap({ try? $0.data(as: Activity.self) })
            activities.append(contentsOf: fetchedActivities)
            paginationDoc = docs.documents.last
            isFetching = false
            print("Call to database Feed View Model fetchActivity(): \(self.activities.count)")
        } catch {
            print(error.localizedDescription)
        }
    }
}
