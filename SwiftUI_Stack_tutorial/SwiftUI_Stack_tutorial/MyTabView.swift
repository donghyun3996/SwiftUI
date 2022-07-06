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
            MyView(title: "1", bgColor: Color.red)
                .tabItem{
                    Image(systemName: "airplane")
                }.tag(0)
            
            MyView(title: "2", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "flame.fill")
                }.tag(1)
            MyView(title: "3", bgColor: Color.orange)
                .tabItem{
                    Image(systemName: "doc.fill")
                }.tag(2)
        }
    }
}


struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
