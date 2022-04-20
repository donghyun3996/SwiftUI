//
//  MyWebView.swift
//  SwiftUI_WebView_tutorial
//
//  Created by 동현 on 2022/04/20.
//

import SwiftUI
import WebKit

struct MywebView: UIViewRepresentable{
  
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MywebView>) {
    }
    
    var urlToLoade: String
    
   
    func makeUIView(context: Context) -> WKWebView {
       
        guard let url = URL(string: self.urlToLoade) else{
            return WKWebView()
        }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
    return webView
    }
}
struct MywebView_Previews: PreviewProvider {
    static var previews: some View {
        MywebView(urlToLoade: "https://www.naver.com/")
    }
}
