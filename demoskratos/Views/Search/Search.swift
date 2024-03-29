//
//  Search.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/10/23.
//

import SwiftUI

struct Search: View {
    @State private var searchText = ""
    @ObservedObject var searchViewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(searchViewModel.searchResults) { representative in
                    NavigationLink {
                        RepresentativeProfile(representative: representative)
                    } label: {
                        RepresentativeCell(representative: representative)
                    }
                }
            }
            .navigationTitle("Search")
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "U.S. House Representatives")
        .onChange(of: searchText, perform: { searchText in
            searchViewModel.searchResults = searchViewModel.representatives.filter({ representative in
                representative.name.lowercased().contains(searchText.lowercased())
            })
        })
    }
}

#Preview {
    Search()
}
