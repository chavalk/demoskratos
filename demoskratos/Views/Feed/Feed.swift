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
            ScrollView {
                FeedRow()
                FeedRow()
                FeedRow()
                FeedRow()
            }
            .navigationTitle("Demoskratos")
            .toolbar {
                Button {
                    authViewModel.signOut()
                } label: {
                    Image(systemName: "lasso")
                }

            }
//            .toolbarBackground(Color.pink, for: .navigationBar)
//            .toolbarBackground(.visible, for: .navigationBar)
//            .navigationBarTitleDisplayMode(.inline)
//            .background(Color(uiColor: UIColor(white: 0.95, alpha: 1)))
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
