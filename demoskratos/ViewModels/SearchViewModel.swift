//
//  SearchViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/20/23.
//

import Firebase

class SearchViewModel: ObservableObject {
    @Published var representatives = [Representative]()
    
    init() {
        fetchRepresentatives()
    }
    
    func fetchRepresentatives() {
        Firestore.firestore().collection("representatives").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.representatives = documents.compactMap({ try? $0.data(as: Representative.self) })
        }
    }
}
