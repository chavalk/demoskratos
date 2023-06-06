//
//  Registration.swift
//  demoskratos
//
//  Created by Jose Garcia on 6/4/23.
//

import SwiftUI

struct Registration: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Create new account")
                .font(.system(size: 30))
                .fontWeight(.semibold)
        }
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
