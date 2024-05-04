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
                            Image(systemName: "house")
                        }
                    
                    Search()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
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
