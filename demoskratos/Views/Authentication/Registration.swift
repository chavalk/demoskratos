//
//  Registration.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/4/23.
//

import SwiftUI

struct Registration: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Button {
                dismiss()
            } label: {
                Image(systemName: "arrow.left")
                    .font(.title)
                    .imageScale(.medium)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            
            Text("Create new account")
                .font(.system(size: 40))
                .fontWeight(.semibold)
            
            Spacer()
            
            VStack(spacing: 40) {
                VStack(spacing: 56) {
                    CustomInputField(text: $fullName, title: "Full Name", placeholder: "Enter your full name")
                    
                    CustomInputField(text: $email, title: "Email Address", placeholder: "Enter your email address")
                    
                    CustomInputField(text: $password, title: "Create Password", placeholder: "Enter your password", isSecureField: true)
                }
                
                Button {
                    authentication.registerUser(withEmail: email, password: password, fullName: fullName)
                } label: {
                    Text("Sign up")
                        .foregroundColor(colorScheme == .dark ? .black : .white)
                        .fontWeight(.semibold)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                        .background(colorScheme == .dark ? Color.white : Color.black)
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
