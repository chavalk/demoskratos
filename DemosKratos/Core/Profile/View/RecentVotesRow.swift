//
//  RecentVotesRow.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/29/23.
//

import SwiftUI

struct RecentVotesRow: View {
    let vote: Vote
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("us-house-tx-21")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 56, height: 56)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Chip Roy")
                        .font(.headline)
                    
                    Text("Voted ")
                    
                    + Text("No ")
                        .bold()
                        .foregroundColor(.red)
                    
                    + Text("on agreeing to ")
                    
                    + Text("House Resolution No. 463 ")
                        .bold()
                    
                    + Text("providing for consideration of the bill (H.R. 277) REINS Act; providing for consideration of the bill (H.R. 288) Separation of Powers Restoration Act; providing for consideration of the bill (H.R. 1615) Gas Stove Protection and Freedom Act; and providing for consideration of the bill (H.R. 1640) Save Our Stoves Act.")
                    
                    FeedRowButtons()
                }
                
            }
            
            
            Divider()
        }
        .padding(.horizontal)
    }
}

//struct RecentVotesRow_Previews: PreviewProvider {
//    static var previews: some View {
//        RecentVotesRow()
//    }
//}
