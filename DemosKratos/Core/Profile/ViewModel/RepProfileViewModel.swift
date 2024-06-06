//
//  RepProfileViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/19/23.
//

import Firebase

class RepProfileViewModel: ObservableObject {
    @Published var votes = [Vote]()
    @Published var isFetching: Bool = true
    @Published var paginationDoc: QueryDocumentSnapshot?
    
    @MainActor
    func fetchVotes() async {
        do {
            var query: Query!
            
            // Implement pagination
            if let paginationDoc {
                query = Firestore.firestore().collection("representatives")
                    .document("Roy")
                    .collection("votes")
                    .order(by: "timestamp", descending: true)
                    .start(afterDocument: paginationDoc)
                    .limit(to: 10)
            } else {
                query = Firestore.firestore().collection("representatives")
                    .document("Roy")
                    .collection("votes")
                    .order(by: "timestamp", descending: true)
                    .limit(to: 10)
            }
            
            let docs = try await query.getDocuments()
            let fetchedVotes = docs.documents.compactMap({ try? $0.data(as: Vote.self) })
            votes.append(contentsOf: fetchedVotes)
            paginationDoc = docs.documents.last
            isFetching = false
            print("Call to database Rep Profile View Model fetchVotes(): \(self.votes.count)")
        } catch {
            print(error.localizedDescription)
        }
    }
}
