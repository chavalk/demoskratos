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
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                if viewModel.isFetching {
                    ProgressView()
                        .padding(.top, 30)
                } else {
                    if viewModel.votes.isEmpty {
                        // No activity found on Firestore
                        Text("No Votes Found")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .padding(.top, 30)
                    } else {
                        ForEach(viewModel.votes) { vote in
                            FeedRow(vote: vote)
                                .onAppear {
                                    // When last activity appears, fetching new activity (If there)
                                    if vote.id == viewModel.votes.last?.id && viewModel.paginationDoc != nil {
                                        Task { await viewModel.fetchVotes() }
                                    }
                                }
                            
                            Divider()
                        }
                    }
                }
            }
        }
        .refreshable {
            // Pull to refresh
            viewModel.isFetching = true
            viewModel.votes = []
            // Resetting pagination doc
            viewModel.paginationDoc = nil
            await viewModel.fetchVotes()
        }
        .task {
            // Fetching for one time
            guard viewModel.votes.isEmpty else { return }
            await viewModel.fetchVotes()
        }
    }
}


#Preview {
    ReusableFeed()
}
