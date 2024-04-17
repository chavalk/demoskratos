//
//  RepProfileViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/19/23.
//

import Firebase

class RepProfileViewModel: ObservableObject {
    @Published var representative: Representative?
    
    init() {
        fetchRepresentative()
    }
    
    func fetchRepresentative() {
        let uid = "Qzqjtk1sa2IJcbwPQ1PG"
        Firestore.firestore().collection("representatives").document(uid).getDocument { snapshot, _ in
            guard let snapshot = snapshot else { return }
            
            guard let representative = try? snapshot.data(as: Representative.self) else { return }
            
            self.representative = representative
            print("Call to database from rep profile view model fetchRepresentative()")
        }
    }
}
