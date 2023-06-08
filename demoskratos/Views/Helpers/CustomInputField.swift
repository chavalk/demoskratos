//
//  CustomInputField.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/5/23.
//

import SwiftUI

struct CustomInputField: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .foregroundColor(.black)
            } else {
                TextField(placeholder, text: $text)
                    .foregroundColor(.black)
            }
            
            Rectangle()
                .foregroundColor(Color(.init(white: 1, alpha: 0.3)))
                .frame(width: UIScreen.main.bounds.width - 32, height: 0.7)
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(text: .constant(""), title: "Email", placeholder: "Enter your email address")
    }
}
