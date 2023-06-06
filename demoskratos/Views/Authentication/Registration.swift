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
                CustomInputField(text: $email, title: "Email Address", placeholder: "Enter your email address")
                
                CustomInputField(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
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
