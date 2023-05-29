//
//  RecentVotesRow.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/29/23.
//

import SwiftUI

struct RecentVotesRow: View {
    var body: some View {
        VStack {
            Text("Voted For Senate Concurrent Resolution No. 61 instructing the enrolling clerk of the senate to make a correction in Senate Bill No. 1725.")
            
            Divider()
        }
        .padding()
    }
}

struct RecentVotesRow_Previews: PreviewProvider {
    static var previews: some View {
        RecentVotesRow()
    }
}
