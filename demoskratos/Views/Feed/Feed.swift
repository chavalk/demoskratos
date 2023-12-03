//
//  Feed.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/13/23.
//

import SwiftUI

struct Feed: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @ObservedObject var feedViewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            List(feedViewModel.activities) { activity in
                FeedRow(activity: activity)
            }
            .navigationTitle("House Activity")
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
