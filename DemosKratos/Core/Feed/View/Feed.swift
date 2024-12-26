//
//  Feed.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/13/23.
//

import SwiftUI

struct Feed: View {
    @State var isShowingLiveView = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            ReusableFeed()
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            viewModel.isLoading = true
                            viewModel.signOut()
                        } label: {
                            Text("Log out")
                        }
                    }
                })
                .navigationTitle("My Reps")
                .overlay(content: {
                    LoadingView(show: $viewModel.isLoading)
                })
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
