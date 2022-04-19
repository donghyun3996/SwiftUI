//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 동현 on 2022/04/19.
//

import SwiftUI

struct MystackView: View{
    var body: some View {
        VStack{
            Text("1!")
                .font(.system(size: 30))
            Text("2!")
                .font(.system(size: 30))
            Text("3!")
                .font(.system(size: 30))
        }
        .background(Color.orange)
    }
}
