//
//  FeedRowButtons.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/13/23.
//

import SwiftUI

struct FeedRowButtons: View {
    var body: some View {
        HStack(spacing: 30) {
            Button {
                
            } label: {
                Image(systemName: "hand.thumbsup")
            }

            Button {
                
            } label: {
                Image(systemName: "hand.thumbsdown")
            }

            Button {
                
            } label: {
                Image(systemName: "bubble.right")
            }
        }
        .foregroundColor(Color(uiColor: .darkGray))
        .padding(.vertical, 8)
    }
}

struct FeedRowButtons_Previews: PreviewProvider {
    static var previews: some View {
        FeedRowButtons()
    }
}
