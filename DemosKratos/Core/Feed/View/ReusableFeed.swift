//
//  ReusableFeed.swift
//  DemosKratos
//
//  Created by Jose Garcia on 4/24/24.
//

import SwiftUI
import Firebase

struct ReusableFeed: View {
    @ObservedObject var viewModel = FeedViewModel()
    
    var body: some View {
        List {
            LazyVStack {
                if viewModel.isFetching {
                    ProgressView()
                        .padding(.top, 30)
                } else {
                    if viewModel.representative == nil {
                        // No activity found on Firestore
                        Text("No Votes Found")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .padding(.top, 30)
                    } else {
                        NavigationLink {
                            if let representative = viewModel.representative {
                                RepresentativeProfile(representative: representative)
                            }
                        } label: {
                            if let representative = viewModel.representative {
                                FeedRow(representative: representative)
                            }
                        }
                    }
                }
            }
        }
        .refreshable {
            // Pull to refresh
            viewModel.isFetching = true
//            viewModel.votes = []
            // Resetting pagination doc
//            viewModel.paginationDoc = nil
//            await viewModel.fetchVotes()
        }
        .task {
            // Fetching for one time
            guard viewModel.representative == nil else { return }
            await viewModel.fetchRepresentative()
        }
    }
}


#Preview {
    ReusableFeed()
}
