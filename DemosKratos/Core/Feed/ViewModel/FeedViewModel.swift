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
    var currentUser: User?
    
    @MainActor
    func fetchRepresentative() async {
        do {
            await fetchCurrentUser()
            guard let usHouseRepresentativeLastName = currentUser?.usHouseRepresentativeLastName else { return }
            let doc = try await Firestore.firestore().collection("representatives").document(usHouseRepresentativeLastName).getDocument()
            let fetchedRepresentative = try? doc.data(as: Representative.self)
            representative = fetchedRepresentative
            isFetching = false
            print("Call to database Feed View Model fetchRepresentative()")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    @MainActor
    func fetchCurrentUser() async {
        do {
            guard let uid = Auth.auth().currentUser?.uid else { return }
            let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
            let user = try snapshot.data(as: User.self)
            self.currentUser = user
            print("Call to database Feed View Model fetchCurrentUser()")
        } catch {
            print(error.localizedDescription)
        }
    }
}
