//
//  MyButtonStyle.swift
//  ButtonStyle_SwiftUI
//
//  Created by 동현 on 2022/07/21.
//

import SwiftUI




struct MySmallerButtoneStyle : ButtonStyle{
    
    var color : Color
    
   
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20 )
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
                    
    }
}

struct MySmallerButtoneStyle_Previews: PreviewProvider {
    static var previews: some View {
        
        Button(action: {
            print("button!")
        }, label: {
            Text("탭")
        }
        ).buttonStyle(MySmallerButtoneStyle(color: Color.blue))
    }
}
