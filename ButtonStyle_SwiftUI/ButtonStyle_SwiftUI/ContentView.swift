//
//  ContentView.swift
//  ButtonStyle_SwiftUI
//
//  Created by 동현 on 2022/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30){
        Button(action: {print("tap")}, label:{
            Text("탭")
                .fontWeight(.bold)
        } ).buttonStyle(MyButtoneStyle(color: Color.blue, type: .tab))
        
        Button(action: {print("tap")}, label:{
            Text("롱클릭")
                .fontWeight(.bold)
        } ).buttonStyle(MyButtoneStyle(color: Color.green, type: .long))
            
        Button(action: {print("tap")}, label:{
            Text("축소 버튼")
                .fontWeight(.bold)
        } ).buttonStyle(MySmallerButtoneStyle(color: Color.purple))
    
            
        Button(action: {print("tap")}, label:{
            Text("회전 버튼")
                .fontWeight(.bold)
        } ).buttonStyle(MyRotateButtoneStyle(color: Color.pink))
        
        Button(action: {print("tap")}, label:{
            Text("블러 버튼")
                .fontWeight(.bold)
        } ).buttonStyle(MyBlurButtoneStyle(color: Color.black))
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
