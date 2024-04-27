//
//  RegistrationCredentials.swift
//  demoskratos
//
//  Created by Jose Garcia on 9/12/23.
//

import SwiftUI

struct RegistrationCredentials: View {
    // MARK: User Details
    let firstName: String
    let lastName: String
    let streetAddress: String
    let city: String
    let state: String
    @State private var email = ""
    @State private var password = ""
    // MARK: View Properties
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var viewModel: AuthViewModel
    
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
            
            Text("Create your account")
                .font(.system(size: 40))
                .fontWeight(.semibold)
            
            Spacer()
            
            VStack(spacing: 40) {
                VStack(spacing: 56) {
                    CustomInputField(text: $email, title: "Email Address", placeholder: "Enter your email address")
                    
                    CustomInputField(text: $password, title: "Create Password", placeholder: "Enter your password", isSecureField: true)
                }
                
                Button {
                    closeKeyboard()
                    viewModel.isLoading = true
                    viewModel.registerUser(withEmail: email, password: password, firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state)
                } label: {
                    Text("Sign up")
                        .foregroundColor(colorScheme == .dark ? .black : .white)
                        .fontWeight(.semibold)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                        .background(colorScheme == .dark ? Color.white : Color.black)
                        .cornerRadius(25)
                }
                .disabledWithOpacity(email == "" || password == "")
                
                Spacer()
            }
        }
        .padding(.leading)
        .overlay {
            LoadingView(show: $viewModel.isLoading)
        }
        .alert(viewModel.errorMessage, isPresented: $viewModel.showError, actions: {})
    }
}

struct RegistrationCredentials_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationCredentials(firstName: "Jose", lastName: "Garcia", streetAddress: "3022 Greenacres", city: "San Antonio", state: "Texas")
    }
}
