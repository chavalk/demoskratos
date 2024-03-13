//
//  WebView.swift
//  demoskratos
//
//  Created by Jose Garcia on 3/12/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = URL(string: "https://www.youtube.com/embed/\(videoID)") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}
