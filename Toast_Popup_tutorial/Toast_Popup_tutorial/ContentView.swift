//
//  ContentView.swift
//  Toast_Popup_tutorial
//
//  Created by 동현 on 2022/07/21.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    @State var shouldShowToast: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                Button(action:{
                    self.shouldShowToast = true
                }, label: {
                    Text("토스트 띄우기")
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                    
                }//Vstack
            }//Zstack
        .popup(isPresented: $shouldShowToast, type:  .default, position: .bottom, animation: .default, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            Text("토스트 메세지 입니다.")
                .padding()
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(10)
        })
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
