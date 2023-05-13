//
//  ContentView.swift
//  demoskratos
//
//  Created by Jose Garcia on 4/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                PostCell()
                PostCell()
                PostCell()
                PostCell()
            }
            .navigationTitle("demoskratos")
            .background(Color(uiColor: UIColor(white: 0.95, alpha: 1)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
