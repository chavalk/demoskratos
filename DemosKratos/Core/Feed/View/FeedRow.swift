//
//  PostCell.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/12/23.
//

import SwiftUI
import Firebase

struct FeedRow: View {
    let vote: Vote
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image("us-house-tx-21")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text("Chip Roy")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                
                HStack {
                    Text(vote.id)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                    
                    Text("")
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }
                
                Text("Your U.S. House Representative voted \(vote.vote) \(vote.question). \(vote.billNumber): \(vote.billTitle).")
                    .font(.system(size: 14))
                
                FeedRowButtons()
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

//struct FeedRow_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedRow(vote: Vote(billNumber: "H RES 1213", billTitle: "A resolution regarding violence against law enforcement officers", id: "May 17, 2024 10:49:00 ", question: "On Agreeing to the Resolution", repLastName: "Roy", rollCallNumber: 218, timestamp: <#T##Timestamp#>, vote: "Yes"))
//    }
//}
