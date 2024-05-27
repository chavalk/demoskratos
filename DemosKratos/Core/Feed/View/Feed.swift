//
//  Feed.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/13/23.
//

import SwiftUI
import Firebase

struct Feed: View {
    @State var isShowingLiveView = false
    
    var body: some View {
        NavigationStack {
            ReusableFeed()
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            try? Auth.auth().signOut()
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
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
