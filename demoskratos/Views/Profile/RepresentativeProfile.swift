//
//  RepresentativeProfile.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/26/23.
//

import SwiftUI

struct RepresentativeProfile: View {
    private let representative: Representative
    
    init(representative: Representative) {
        self.representative = representative
    }
    
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: 400)
            
            CircleImage(profileImageUrl: representative.profileImageUrl)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Text(representative.name)
                .font(.title)
                .bold()
            
            Text(representative.position)
            
            Text("District \(representative.district) - \(representative.state)")
                .foregroundColor(.secondary)
            
            Divider()
                .padding()
            
            HStack {
                Text("Recent Votes")
                    .font(.title2)
                .bold()
                
                Spacer()
            }
            .padding(.leading)
            
            RecentVotesRow()
            RecentVotesRow()
            RecentVotesRow()
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct RepresentativeProfile_Previews: PreviewProvider {
    static var previews: some View {
        RepresentativeProfile(representative: Representative(uid: "123456", name: "Chip Roy", district: 21, position: "United States House Representative", profileImageUrl: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/us-house-tx-21.png?alt=media&token=562aa2d7-39c8-489a-8084-3072dddd0fcd", state: "Texas", districtPopulation: 766987, districtVap: 604056))
    }
}
