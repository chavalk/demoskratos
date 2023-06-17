//
//  PostCell.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/12/23.
//

import SwiftUI

struct FeedRow: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                NavigationLink {
                    if let representative = authViewModel.representative {
                        RepresentativeProfile(representative: representative)
                    }
                    
                } label: {
                    Image("us-house-tx-21")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 56, height: 56)
                }
                
                VStack(alignment: .leading, spacing: 8) {
//                    VStack(alignment: .leading, spacing: 3) {
//                        Text("Diego M. Bernal")
//                            .font(.headline)
//
//                        Text("05/17/2023")
//                            .font(.subheadline)
//                            .foregroundColor(.secondary)
//                    }
                    
                    Text("Chip Roy")
                        .font(.headline)
                    
                    Text("Your United States House Representative just voted ")
                    
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
//        .background(Color.white)
    }
}

struct FeedRow_Previews: PreviewProvider {
    static var previews: some View {
        FeedRow()
    }
}
