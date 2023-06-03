//
//  Landing.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/3/23.
//

import SwiftUI

struct Landing: View {
    var body: some View {
        VStack(spacing: 20) {
            Button {
                
            } label: {
                Text("Create Account")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .frame(width: UIScreen.main.bounds.width - 32, height: 50)
            .background(Color.black)
            .cornerRadius(25)
            
            Button {
                
            } label: {
                Text("Log in")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
            }
            .frame(width: UIScreen.main.bounds.width - 32, height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.black, lineWidth: 1)
            )
        }
    }
}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        Landing()
    }
}
