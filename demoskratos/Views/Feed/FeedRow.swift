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
                NavigationLink {
                    RepresentativeProfile()
                } label: {
                    Image("texas-house-123")
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
                    
                    Text("Diego M. Bernal")
                        .font(.headline)
                    
                    Text("Your Texas House Representative just voted ")
                    
                    + Text("Against ")
                        .bold()
                        .foregroundColor(.red)
                    
                    + Text("Senate Bill 14 ")
                        .bold()
                    
                    + Text("relating to prohibitions on the provision to certain children of procedures and treatments for gender transitioning, gender reassignment, or gender dysphoria and on the use of public money or public assistance to provide those procedures and treatments.")
                    
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
