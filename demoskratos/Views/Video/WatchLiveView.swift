//
//  WatchLiveView.swift
//  demoskratos
//
//  Created by Jose Garcia on 2/20/24.
//

import SwiftUI

struct WatchLiveView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            WebView(videoID: "9GA6hBK8xK8?si=rcpIIVy69MqZBlWu")
                .frame(width: 300, height: 200)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        }
                    }
                }
        }
    }
}

#Preview {
    WatchLiveView()
}
