//
//  SearchViewModel.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/20/23.
//

import Firebase

class SearchViewModel: ObservableObject {
    @Published var representatives = [Representative]()
    @Published var searchResults = [Representative]()
    
    func fetchRepresentatives(with searchText: String) {
        Firestore.firestore().collection("representatives")
            .whereField("name", isGreaterThanOrEqualTo: searchText)
            .whereField("name", isLessThanOrEqualTo: "\(searchText)\u{f8ff}")
            .getDocuments { snapshot, _ in
                guard let documents = snapshot?.documents else { return }
                self.representatives = documents.compactMap({ try? $0.data(as: Representative.self) })
                print("Call to database from search view model fetchRepresentatives(): \(documents.count)")
            }
    }
}
