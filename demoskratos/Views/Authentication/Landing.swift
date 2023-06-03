//
//  Landing.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/3/23.
//

import SwiftUI

struct Landing: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Create Account")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .frame(width: UIScreen.main.bounds.width - 32, height: 50)
            .background(Color.black)
            .cornerRadius(25)
        }
    }
}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        Landing()
    }
}
