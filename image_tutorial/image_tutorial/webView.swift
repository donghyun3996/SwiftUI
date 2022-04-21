//
//  webView.swift
//  image_tutorial
//
//  Created by 동현 on 2022/04/21.
//

import SwiftUI
import WebKit


struct webView: UIViewRepresentable{
  
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<webView>) {
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
struct webView_Previews: PreviewProvider {
    static var previews: some View {
        webView(urlToLoade: "https://www.naver.com/")
    }
}
