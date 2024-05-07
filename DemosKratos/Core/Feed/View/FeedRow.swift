//
//  PostCell.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/12/23.
//

import SwiftUI
import Firebase

struct FeedRow: View {
    let activity : Activity
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image("us-house-seal")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text("U.S. House of Representatives")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                
                HStack {
                    Text(activity.date)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                    
                    Text(activity.floorTime)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }
                
                Text(activity.floorActivity)
                    .font(.system(size: 14))
                
                FeedRowButtons()
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

struct FeedRow_Previews: PreviewProvider {
    static var previews: some View {
        FeedRow(activity: Activity(id: "1", floorActivity: "Some floor activity.", floorBill: "Floor bill", floorTime: "Time", date: "January 22, 2024"))
    }
}
