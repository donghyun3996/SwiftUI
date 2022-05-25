//
//  ContentView.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
        
            VStack(alignment: .leading){
            
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                }
                
                
                Text("할일 목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
            ScrollView{
                VStack(){
                    
                    MyProjectCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                    MyBasicCard()
                
            }.padding()
        }
            }
            Circle()
                .frame(width:60, height: 60)
                .foregroundColor(Color.yellow)
                .overlay{
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(10)
                .shadow(radius: 10)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
