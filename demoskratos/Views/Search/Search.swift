//
//  Search.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/10/23.
//

import SwiftUI

struct Search: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Search")
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "U.S. House Representatives")
    }
}

#Preview {
    Search()
}
