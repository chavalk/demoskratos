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
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            viewModel.isLoading = true
                            viewModel.signOut()
                        } label: {
                            Text("Log out")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            self.isShowingLiveView.toggle()
                        } label: {
                            Image(systemName: "play.circle.fill")
                                .font(.system(size: 25))
                        }
                        .fullScreenCover(isPresented: $isShowingLiveView, content: {
                            WatchLiveView()
                        })
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
