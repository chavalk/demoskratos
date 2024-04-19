//
//  LoadingView.swift
//  DemosKratos
//
//  Created by Jose Garcia on 4/17/24.
//

import SwiftUI

struct LoadingView: View {
    @Binding var show: Bool
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            if show {
                Group {
                    Rectangle()
                        .fill(.black.opacity(0.25))
                        .ignoresSafeArea()
                    if colorScheme == .dark {
                        ProgressView()
                            .padding(15)
                            .background(.black, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                    } else {
                        ProgressView()
                            .padding(15)
                            .background(.white, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                    
                }
            }
        }
    }
}

#Preview {
    LoadingView(show: .constant(true))
}
