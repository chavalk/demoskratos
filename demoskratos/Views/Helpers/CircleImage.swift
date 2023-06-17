//
//  CircleImage.swift
//  demoskratos
//
//  Created by Jose Garcia on 5/27/23.
//

import SwiftUI

struct CircleImage: View {
    @Environment(\.colorScheme) var colorScheme
    var profileImageUrl: String
    
    var body: some View {
        AsyncImage(url: URL(string: profileImageUrl)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(colorScheme == .dark ? .black : .white, lineWidth: 4)
                }
                .shadow(radius: 7)
        } placeholder: {
            Circle()
                .frame(width: 250, height: 250)
                .foregroundColor(Color(uiColor: .lightGray))
                .overlay {
                    Circle().stroke(colorScheme == .dark ? .black : .white, lineWidth: 4)
                    ProgressView()
                }
                .shadow(radius: 7)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("us-house-tx-21"))
    }
}
