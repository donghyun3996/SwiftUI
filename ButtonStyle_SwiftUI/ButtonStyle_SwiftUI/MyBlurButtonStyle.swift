//  //  MyButtonStyle.swift
//  ButtonStyle_SwiftUI
//
//  Created by 동현 on 2022/07/21.
//

import SwiftUI




struct MyBlurButtoneStyle : ButtonStyle{
    
    var color : Color
    
   
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20 )
            
            .blur(radius: configuration.isPressed ? 20 : 0)
        
    }
}

struct MyBlurButtoneStyle_Previews: PreviewProvider {
    static var previews: some View {
        
        Button(action: {
            print("button!")
        }, label: {
            Text("탭")
        }
        ).buttonStyle(MyBlurButtoneStyle(color: Color.blue))
    }
}
