//
//  Landing.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/3/23.
//

import SwiftUI

struct Landing: View {
    var body: some View {
        VStack(spacing: 60) {
            
            Spacer()
            
            VStack(alignment: .center, spacing: 25) {
                Text("Demoskratos")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                
                Text("Stay up to date with your elected representatives.")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            VStack(spacing: 15) {
                Button {
                    
                } label: {
                    Text("Create Account")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                }
                .background(Color.black)
                .cornerRadius(25)
                
                Button {
                    
                } label: {
                    Text("Log in")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 1)
                )
            }
        }
    }
}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        Landing()
    }
}
