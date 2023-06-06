//
//  Registration.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/4/23.
//

import SwiftUI

struct Registration: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Text("Create new account")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            
            VStack(spacing: 32) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Email Address")
                        .fontWeight(.semibold)
                        .font(.footnote)
                    
                    TextField("Enter your email address", text: $email)
                        .foregroundColor(.white)
                    
                    Rectangle()
                        .foregroundColor(Color(.init(white: 1, alpha: 0.3)))
                        .frame(width: UIScreen.main.bounds.width - 32, height: 0.7)
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Password")
                        .fontWeight(.semibold)
                        .font(.footnote)
                    
                    TextField("Enter your password", text: $password)
                        .foregroundColor(.white)
                    
                    Rectangle()
                        .foregroundColor(Color(.init(white: 1, alpha: 0.3)))
                        .frame(width: UIScreen.main.bounds.width - 32, height: 0.7)
                }
            }
            .padding(.horizontal)
            .padding(.top, 12)
        }
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
