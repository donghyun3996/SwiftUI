//
//  MyTabView.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/06/27.
//

import SwiftUI

struct MyTabView: View{
    var body: some View{
        TabView
        {
            Text("1번")
                .fontWeight(.black)
                .font(.largeTitle)
                .tabItem{
                    Image(systemName: "airplane")
                }
            Text("2번")
            
                .fontWeight(.black)
                .font(.largeTitle)
                .tabItem{
                    Image(systemName: "airplane")
                }
            Text("3번")
            
                .fontWeight(.black)
                .font(.largeTitle)
                .tabItem{
                    Image(systemName: "airplane")
                }
        }
    }
}


struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
