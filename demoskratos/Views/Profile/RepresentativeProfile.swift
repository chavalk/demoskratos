//
//  RepresentativeProfile.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/26/23.
//

import SwiftUI

struct RepresentativeProfile: View {
    var image = Image("texas-house-123")
    
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: 400)
            
            CircleImage(image: image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Text("Diego M. Bernal")
                .font(.title)
                .bold()
            
            Text("Texas House Member")
            
            Text("District 123")
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
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct RepresentativeProfile_Previews: PreviewProvider {
    static var previews: some View {
        RepresentativeProfile()
    }
}
