//
//  ContentView.swift
//  demoskratos
//
//  Created by Jose Garcia on 4/26/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authentication: AuthViewModel
    
    var body: some View {
        Group {
            if authentication.userSession == nil {
                Landing()
            } else {
                TabView {
                    Feed()
                        .tabItem {
                            Label("My Reps", systemImage: "person")
                        }
                    
                    Candidates()
                        .tabItem {
                            Label("My Candidates", systemImage: "person.2")
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AuthViewModel())
    }
}
