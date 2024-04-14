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
                    .font(.system(size: 20))
                    .frame(width: 32, height: 32)
            }

            Button {
                
            } label: {
                Image(systemName: "hand.thumbsdown")
                    .font(.system(size: 20))
                    .frame(width: 32, height: 32)
            }

            Button {
                
            } label: {
                Image(systemName: "bubble.right")
                    .font(.system(size: 20))
                    .frame(width: 32, height: 32)
            }
        }
        .foregroundColor(Color(uiColor: .darkGray))
    }
}

struct FeedRowButtons_Previews: PreviewProvider {
    static var previews: some View {
        FeedRowButtons()
    }
}
