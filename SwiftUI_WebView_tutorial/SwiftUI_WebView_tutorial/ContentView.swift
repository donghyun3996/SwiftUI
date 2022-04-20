//
//  ContentView.swift
//  SwiftUI_WebView_tutorial
//
//  Created by 동현 on 2022/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HStack{
                NavigationLink(destination: MywebView(urlToLoade: "https://www.naver.com/")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("네이버")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MywebView(urlToLoade: "https://github.com/")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("github")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MywebView(urlToLoade: "https://www.google.com/")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("google")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
