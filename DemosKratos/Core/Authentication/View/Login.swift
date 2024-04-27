//
//  Login.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/6/23.
//

import SwiftUI

struct Login: View {
    // MARK: User Details
    @State var email = ""
    @State var password = ""
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
            
            Text("Log in")
                .font(.system(size: 40))
                .fontWeight(.semibold)
            
            Spacer()
            
            VStack(spacing: 40) {
                VStack(spacing: 56) {
                    CustomInputField(text: $email, title: "Email Address", placeholder: "Enter your email address")
                    
                    CustomInputField(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                }
                
                Button {
                    UIApplication.shared.self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    viewModel.isLoading = true
                    viewModel.signIn(withEmail: email, password: password)
                } label: {
                    Text("Log in")
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
        .overlay(content: {
            LoadingView(show: $viewModel.isLoading)
        })
        .alert(viewModel.errorMessage, isPresented: $viewModel.showError, actions: {})
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
