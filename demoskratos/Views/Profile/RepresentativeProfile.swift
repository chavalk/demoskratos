//
//  RepresentativeProfile.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/26/23.
//

import SwiftUI

struct RepresentativeProfile: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 250)
            
            Spacer()
        }
    }
}

struct RepresentativeProfile_Previews: PreviewProvider {
    static var previews: some View {
        RepresentativeProfile()
    }
}
