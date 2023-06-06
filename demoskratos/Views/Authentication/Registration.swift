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
        VStack(alignment: .leading) {
            Text("Create new account")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            
            Spacer()
            
            VStack(spacing: 56) {
                CustomInputField(text: $email, title: "Email Address", placeholder: "Enter your email address")
                
                CustomInputField(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                
                CustomInputField(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
            }
        }
        .padding(.horizontal)
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
