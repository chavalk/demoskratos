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
                .padding()
                
                HStack {
                    AsyncImage(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/us-house-seal.png?alt=media&token=94f6c9b6-a84c-4671-aca3-e23fce03ad1e&_gl=1*g5qcny*_ga*OTE0NTQ3NjUyLjE2NzExNDk2NjM.*_ga_CW55HF8NVT*MTY5NzE1MzM2NS4xNDUuMS4xNjk3MTUzNDYyLjM4LjAuMA..")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 56, height: 56)
                    } placeholder: {
                        Circle()
                            .frame(width: 56, height: 56)
                            .foregroundColor(Color(uiColor: .lightGray))
                    }
                    
                    Text("Next Meeting:")
                        .bold()
                    
                    Text("Currently in session")
                    
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
                    .padding()
            }
            .navigationTitle("Meetings")
        }
    }
}

#Preview {
    Meetings()
}
