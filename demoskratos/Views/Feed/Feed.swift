//
//  Feed.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/13/23.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                FeedRow()
                FeedRow()
                FeedRow()
                FeedRow()
            }
            .navigationTitle("demoskratos")
            .background(Color(uiColor: UIColor(white: 0.95, alpha: 1)))
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
