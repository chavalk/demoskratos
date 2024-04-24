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
                    if viewModel.activities.isEmpty {
                        // No activity found on Firestore
                        Text("No Activity Found")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .padding(.top, 30)
                    } else {
                        ForEach(viewModel.activities) { activity in
                            FeedRow(activity: activity)
                                .onAppear {
                                    // When last activity appears, fetching new activity (If there)
                                    if activity.id == viewModel.activities.last?.id && viewModel.paginationDoc != nil {
                                        Task { await viewModel.fetchActivity() }
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
            viewModel.activities = []
            // Resetting pagination doc
            viewModel.paginationDoc = nil
            await viewModel.fetchActivity()
        }
        .task {
            // Fetching for one time
            guard viewModel.activities.isEmpty else { return }
            await viewModel.fetchActivity()
        }
    }
}


#Preview {
    ReusableFeed()
}
