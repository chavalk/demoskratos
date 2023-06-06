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
        VStack(alignment: .leading, spacing: 20) {
            
            Spacer()
            
            Text("Create new account")
                .font(.system(size: 40))
                .fontWeight(.semibold)
            
            Spacer()
            
            VStack(spacing: 40) {
                VStack(spacing: 56) {
                    CustomInputField(text: $email, title: "Email Address", placeholder: "Enter your email address")
                    
                    CustomInputField(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                    
                    CustomInputField(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                }
                
                Button {
                    
                } label: {
                    Text("Sign up")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                        .background(Color.black)
                        .cornerRadius(25)
                }
                
                Spacer()
            }
        }
        .padding(.leading)
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
