//
//  Registration.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/4/23.
//

import SwiftUI

struct Registration: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var authentication: AuthViewModel
    
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
            
            Text("Add your name")
                .font(.system(size: 40))
                .fontWeight(.semibold)
            
            Spacer()
            
            VStack(spacing: 40) {
                VStack(spacing: 56) {
                    CustomInputField(text: $firstName, title: "First Name", placeholder: "Enter your first name")
                    
                    CustomInputField(text: $lastName, title: "Last Name", placeholder: "Enter your last name")
                }
                
                NavigationLink {
                    RegistrationAddress(firstName: firstName, lastName: lastName)
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Continue")
                        .foregroundColor(colorScheme == .dark ? .black : .white)
                        .fontWeight(.semibold)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                        .background(colorScheme == .dark ? Color.white : Color.black)
                        .cornerRadius(25)
                }
                .disabledWithOpacity(firstName == "" || lastName == "")
                
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
