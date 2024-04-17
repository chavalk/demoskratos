//
//  Landing.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/3/23.
//

import SwiftUI

struct Landing: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 60) {
                
                Spacer()
                
                VStack(alignment: .center, spacing: 25) {
                    Text("Demos Kratos")
                        .font(.system(size: 55))
                        .fontWeight(.bold)
                    
                    Text("Stay up to date with your elected representatives.")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                VStack(spacing: 15) {
                    NavigationLink {
                        Registration()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Create account")
                            .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                            .fontWeight(.semibold)
                            .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                            .background(colorScheme == .dark ? Color.white : Color.black)
                            .cornerRadius(25)
                    }
                    
                    NavigationLink {
                        Login()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Log in")
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .fontWeight(.semibold)
                            .frame(width: UIScreen.main.bounds.width - 48, height: 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 1)
                            )
                    }
                }
            }
        }
    }
}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        Landing()
    }
}
