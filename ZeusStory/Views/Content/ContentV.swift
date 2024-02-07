//
//  ContentV.swift
//  ZeusStory
//
//  Created by Anton on 7/2/24.
//

import SwiftUI
import WebKit

struct ContentV: View {
    var body: some View {
        VStack {
            ContentVA(url: URL(string: "https://appsportfive.org")!, allowCookies: true, allowPopups: true)
        }
    }
}

#Preview {
    ContentV()
}

struct ContentVA: UIViewRepresentable {
    let url: URL
    let allowCookies: Bool
    let allowPopups: Bool

    class Coordinator: NSObject, WKNavigationDelegate, WKUIDelegate {
        var parent: ContentVA

        init(parent: ContentVA) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if parent.allowPopups {
                if let url = navigationAction.request.url,
                   navigationAction.targetFrame == nil {
                    UIApplication.shared.open(url)
                    decisionHandler(.cancel)
                    return
                }
            }
            
            if let url = navigationAction.request.url {
                let urlString = url.absoluteString
                // Check if the URL starts with the supported deeplink schemes
                if urlString.hasPrefix("tg://") || urlString.hasPrefix("viber://") || urlString.hasPrefix("whatsapp://") {
                    // Open the URL externally
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    decisionHandler(.cancel) // Cancel the navigation in the WebView
                    return
                }
            }
            
            decisionHandler(.allow)
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            // Inject JavaScript to enable HTML5 audio playback
            let javascript = """
                var audioElements = document.getElementsByTagName('audio');
                for (var i=0; i<audioElements.length; i++) {
                    audioElements[i].controls = true;
                }
            """
            webView.evaluateJavaScript(javascript, completionHandler: nil)
        }
        
        func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
            if let frame = navigationAction.targetFrame,
                frame.isMainFrame {
                return nil
            }
            webView.load(navigationAction.request)
            return nil
        }
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeUIView(context: Context) -> WKWebView {
        let preferences = WKPreferences()
        preferences.javaScriptEnabled = true
        preferences.javaScriptCanOpenWindowsAutomatically = true

        let configuration = WKWebViewConfiguration()
        configuration.preferences = preferences

        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.navigationDelegate = context.coordinator
        webView.allowsBackForwardNavigationGestures = true
        webView.uiDelegate = context.coordinator

        if allowCookies {
            webView.configuration.websiteDataStore.httpCookieStore.getAllCookies { cookies in
                let dataStore = webView.configuration.websiteDataStore
                cookies.forEach { cookie in
                    dataStore.httpCookieStore.setCookie(cookie)
                }
            }
        }

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

