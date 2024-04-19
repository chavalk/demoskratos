//
//  Search.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/10/23.
//

import SwiftUI

struct Search: View {
    // MARK: View Properties
    @State private var searchText = ""
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.representatives) { representative in
                    NavigationLink {
                        RepresentativeProfile(representative: representative)
                    } label: {
                        RepresentativeCell(representative: representative)
                    }
                }
            }
            .navigationTitle("Search")
        }
        .listStyle(.plain)
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "U.S. House Representatives")
        .onSubmit(of: .search) {
            viewModel.fetchRepresentatives(with: searchText)
        }
        .onChange(of: searchText) { newValue in
            if newValue.isEmpty {
                viewModel.representatives = []
            }
        }
    }
}

#Preview {
    Search()
}
