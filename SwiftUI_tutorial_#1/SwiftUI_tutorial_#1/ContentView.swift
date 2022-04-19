//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 동현 on 2022/04/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
        MystackView()
        MystackView()
        MystackView()
        }
        .padding(10.0)
        .background(Color.yellow)
        
        }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
