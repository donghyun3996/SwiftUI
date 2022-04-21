//
//  ContentView.swift
//  image_tutorial
//
//  Created by 동현 on 2022/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Image("myImage")
                    .frame(height: 10)
                    .offset( y: -300)
                
                CircleimageView()
                HStack{
                    NavigationLink(destination: webView(urlToLoade:"https://www.youtube.com/watch?v=ZodiJ0oy2kM&list=PLgOlaPUIbynqyJHiTEv7CFaXd8g5jtogT&index=6")
                    ){
                        Text("꺼져")
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(Color.white)
                    }
                    
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
