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
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "clock")
                    .font(.system(size: 14))
                
                Text(activity.floorTime)
                    .font(.system(size: 14))
            }
            
            Text(activity.floorActivity)
                .font(.system(size: 14))
        }
    }
}

struct FeedRow_Previews: PreviewProvider {
    static var previews: some View {
        FeedRow(activity: Activity(id: "1", floorActivity: "Some floor activity.", floorBill: "Floor bill", floorTime: "Time"))
    }
}
