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
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Next Meeting:")
                            .bold()
                        
                        Text("Monday Oct. 16, 2023 at 6:00 PM EDT")
                    }
                    
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
                    .padding()
                
                HStack {
                    Text("U.S. Senate")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                }
                .padding(.leading)
                
                HStack {
                    AsyncImage(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/us-senate-seal.jpeg?alt=media&token=4c8177d3-e6f2-4290-bfcc-8504f7b529bc&_gl=1*c4xpig*_ga*OTE0NTQ3NjUyLjE2NzExNDk2NjM.*_ga_CW55HF8NVT*MTY5NzE1OTM0Ny4xNDcuMS4xNjk3MTYxOTg1LjU5LjAuMA..")) { image in
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
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Next Meeting:")
                            .bold()
                        
                        Text("Monday Oct. 16, 2023 at 3:00 PM EDT")
                    }
                    
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
                    .padding()
                
                HStack {
                    Text("Texas House of Representatives")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                }
                .padding(.leading)
                
                HStack {
                    AsyncImage(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/tx-house-seal.png?alt=media&token=7e9fe1fe-5f2b-4857-aa96-4941a95ec4b4&_gl=1*jysmpx*_ga*OTE0NTQ3NjUyLjE2NzExNDk2NjM.*_ga_CW55HF8NVT*MTY5NzE1OTM0Ny4xNDcuMS4xNjk3MTU5NzM3LjIuMC4w")) { image in
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
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Next Meeting:")
                            .bold()
                        
                        Text("Monday Oct. 16, 2023 at 3:00 PM CDT")
                    }
                    
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
                    .padding()
                
                HStack {
                    Text("Texas Senate")
                        .font(.title2)
                        .bold()
                    
                    Spacer()
                }
                .padding(.leading)
                
                HStack {
                    AsyncImage(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/demoskratos-1160e.appspot.com/o/tx-senate-seal.png?alt=media&token=c4d07b40-c831-4f51-8628-a65971f38390&_gl=1*6cpnfr*_ga*OTE0NTQ3NjUyLjE2NzExNDk2NjM.*_ga_CW55HF8NVT*MTY5NzE1OTM0Ny4xNDcuMS4xNjk3MTYwNTYwLjQuMC4w")) { image in
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
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Next Meeting:")
                            .bold()
                        
                        Text("Monday Oct. 16, 2023 at 1:00 PM CDT")
                    }
                    
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
                    .padding()
            }
            .navigationTitle("Meetings")
            .padding(.top)
        }
    }
}

#Preview {
    Meetings()
}
