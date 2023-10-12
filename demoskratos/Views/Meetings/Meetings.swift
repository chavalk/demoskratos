//
//  Meetings.swift
//  demoskratos
//
//  Created by Jose Garcia on 10/11/23.
//

import SwiftUI

struct Meetings: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    Text("U.S. House of Representatives")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.bottom)
            }
            .navigationTitle("Meetings")
        }
    }
}

#Preview {
    Meetings()
}
