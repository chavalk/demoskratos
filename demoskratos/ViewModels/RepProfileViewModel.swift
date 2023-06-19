//
//  RepProfileViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/19/23.
//

import Foundation

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
            
            print("DEBUG: Representative is \(representative.name)")
            self.representative = representative
        }
    }
}
