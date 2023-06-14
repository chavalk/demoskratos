//
//  RepresentativeProfile.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/26/23.
//

import SwiftUI

struct RepresentativeProfile: View {
    var image = Image("us-house-tx-21")
    
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: 400)
            
            CircleImage(image: image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Text("Chip Roy")
                .font(.title)
                .bold()
            
            Text("United States House Representative")
            
            Text("District 21 - Texas")
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
        RepresentativeProfile()
    }
}
