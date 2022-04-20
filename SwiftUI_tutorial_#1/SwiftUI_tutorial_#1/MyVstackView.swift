//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 동현 on 2022/04/19.
//

import SwiftUI

struct MystackView: View{
    
    @Binding
    var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack{
            Text("1!")
                .font(.system(size: 30))
            Text("2!")
                .font(.system(size: 30))
            Text("3!")
                .font(.system(size: 30))
        }                               
        .background(self.isActivated ? Color.green : Color.orange)
        .padding(self.isActivated ? 10.0 : 0 )
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            MystackView()
        }
}
}
