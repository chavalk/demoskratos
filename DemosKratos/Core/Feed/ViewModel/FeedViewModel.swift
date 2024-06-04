//
//  FeedViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/17/23.
//

import Firebase

class FeedViewModel: ObservableObject {
    @Published var isFetching: Bool = true
    @Published var representative: Representative?
    
    @MainActor
    func fetchRepresentative() async {
        do {
            let doc = try await Firestore.firestore().collection("representatives").document("Roy").getDocument()
            let fetchedRepresentative = try? doc.data(as: Representative.self)
            representative = fetchedRepresentative
            isFetching = false
            print("Call to database Feed View Model fetchRepresentative()")
        } catch {
            print(error.localizedDescription)
        }
    }
}
