//
//  Ballot.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/8/23.
//

import SwiftUI

struct Ballot: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    Text("November 7, 2023")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.bottom)
                
//                HStack {
//                    Text("Joint Constitutional Amendment, General, Special, Charter, and Bond Election")
//                        .font(.title3)
////                        .bold()
//                    
//                    Spacer()
//                }
//                .padding(.leading)
//                .padding(.bottom)
                
                BallotRow()
                BallotRow()
                BallotRow()
                BallotRow()
                BallotRow()
            }
            .navigationTitle("My Ballot")
        }
    }
}

#Preview {
    Ballot()
}
