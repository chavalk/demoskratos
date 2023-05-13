//
//  PostCell.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/12/23.
//

import SwiftUI

struct FeedRow: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("texas-house-123")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 56, height: 56)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Diego M. Bernal")
                        .font(.headline)
                    Text("Your Texas House representative just voted against Senate Bill 14 relating to prohibitions on the provision to certain children of procedures and treatments for gender transitioning, gender reassignment, or gender dysphoria and on the use of public money or public assistance to provide those procedures and treatments.")
                }
            }
            
            Divider()
        }
    }
}

struct FeedRow_Previews: PreviewProvider {
    static var previews: some View {
        FeedRow()
    }
}
