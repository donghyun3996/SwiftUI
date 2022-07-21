//
//  MyButtonStyle.swift
//  ButtonStyle_SwiftUI
//
//  Created by 동현 on 2022/07/21.
//

import SwiftUI


enum ButtonType{
case tab, long
}

struct MyButtoneStyle : ButtonStyle{
    
    var color : Color
    var type : ButtonType
   
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20 )
            .scaleEffect(configuration.isPressed ? 1.5 : 1.0)
            .onTapGesture {
                if(self.type == .tab){
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }
            .onLongPressGesture{
                if(self.type == .long){
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
    }
}

struct MyButtoneStyle_Previews: PreviewProvider {
    static var previews: some View {
        
        Button(action: {
            print("button!")
        }, label: {
            Text("탭")
        }
        ).buttonStyle(MyButtoneStyle(color: Color.blue, type: .tab))
    }
}
