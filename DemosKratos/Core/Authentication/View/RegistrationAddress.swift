//
//  RegistrationAddress.swift
//  demoskratos
//
//  Created by Jose Garcia on 9/10/23.
//

import SwiftUI

struct RegistrationAddress: View {
    let firstName: String
    let lastName: String
    @State private var streetAddress = ""
    @State private var city = ""
    @State private var state = ""
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Button {
                dismiss()
            } label: {
                Image(systemName: "arrow.left")
                    .font(.title)
                    .imageScale(.medium)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            
            Text("Add your address")
                .font(.system(size: 40))
                .fontWeight(.semibold)
            
            Spacer()
            
            VStack(spacing: 40) {
                VStack(spacing: 30) {
                    CustomInputField(text: $streetAddress, title: "Street Address", placeholder: "Enter your street address")
                    
                    CustomInputField(text: $city, title: "City", placeholder: "Enter your city")
                    
                    CustomInputField(text: $state, title: "State", placeholder: "Enter your state")
                }
                
                NavigationLink {
                    RegistrationCredentials(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state)
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Continue")
                        .foregroundColor(colorScheme == .dark ? .black : .white)
                        .fontWeight(.semibold)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                        .background(colorScheme == .dark ? Color.white : Color.black)
                        .cornerRadius(25)
                }
                .disabledWithOpacity(streetAddress == "" || city == "" || state == "")
                
                Spacer()
            }
        }
        .padding(.leading)
    }
}

struct RegistrationAddress_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationAddress(firstName: "Jose", lastName: "Garcia")
    }
}
