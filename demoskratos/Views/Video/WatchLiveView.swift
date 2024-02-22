//
//  WatchLiveView.swift
//  demoskratos
//
//  Created by Jose Garcia on 2/20/24.
//

import SwiftUI

struct WatchLiveView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(Color(uiColor: .white))
                        }
                    }
                }
        }
    }
}

#Preview {
    WatchLiveView()
}
