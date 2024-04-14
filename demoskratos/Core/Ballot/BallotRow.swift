//
//  BallotRow.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/10/23.
//

import SwiftUI

struct BallotRow: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("State of Texas Proposition 1")
                .font(.headline)
            
            Text("The constitutional amendment protecting the right to engage in farming, ranching, timber production, horticulture, and wildlife management.")
            
            FeedRowButtons()
            
            Divider()
        }
        .padding(.horizontal)
    }
}

#Preview {
    BallotRow()
}
