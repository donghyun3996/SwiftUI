//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 동현 on 2022/04/19.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                MystackView(isActivated: $isActivated)
                MystackView(isActivated: $isActivated)
                MystackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black )
                .onTapGesture {
                    withAnimation{
                        self.isActivated.toggle()
                    }
                    
                }
                NavigationLink(destination: MytextView(isActivated: $isActivated)){
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top, 50)
            }
            }
            
            
            
            
        
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
