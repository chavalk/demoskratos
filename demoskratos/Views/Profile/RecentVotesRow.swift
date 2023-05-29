//
//  RecentVotesRow.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/29/23.
//

import SwiftUI

struct RecentVotesRow: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("texas-house-123")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 56, height: 56)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Diego M. Bernal")
                        .font(.headline)
                    
                    Text("Voted For Senate Concurrent Resolution No. 61 instructing the enrolling clerk of the senate to make a correction in Senate Bill No. 1725.")
                }
                
            }
            
            
            Divider()
        }
        .padding(.horizontal)
    }
}

struct RecentVotesRow_Previews: PreviewProvider {
    static var previews: some View {
        RecentVotesRow()
    }
}
