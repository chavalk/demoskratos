//
//  RecentVotesRow.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/29/23.
//

import SwiftUI

struct RecentVotesRow: View {
    let vote: Vote
    let representative: Representative
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("us-house-tx-21")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 56, height: 56)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(representative.name)
                        .font(.headline)
                    
                    Text("Voted ")
                    + Text("\(vote.vote) ")
                        .bold()
                        .foregroundColor(vote.vote == "Yes" ? .green : .red)
                    + Text("\(vote.question) ")
                    + Text(makeAttributedString())
                    + Text(" \(vote.billTitle).")
                    
                    FeedRowButtons()
                }
                
            }
            
            
            Divider()
        }
        .padding(.horizontal)
    }
    
    func makeAttributedString() -> AttributedString {
        var attributedString = AttributedString(vote.bill)
        attributedString.link = URL(string: vote.billURL)
        attributedString.foregroundColor = .blue
        return attributedString
    }
}

//struct RecentVotesRow_Previews: PreviewProvider {
//    static var previews: some View {
//        RecentVotesRow()
//    }
//}
