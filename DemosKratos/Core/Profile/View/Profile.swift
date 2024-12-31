//
//  Profile.swift
//  DemosKratos
//
//  Created by Jose Garcia on 12/29/24.
//

import SwiftUI

struct Profile: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            viewModel.isLoading = true
                            viewModel.signOut()
                        } label: {
                            Text("Log out")
                        }
                    }
                })
                .navigationTitle("Profile")
                .overlay(content: {
                    LoadingView(show: $viewModel.isLoading)
                })
        }
    }
}

#Preview {
    Profile()
}
