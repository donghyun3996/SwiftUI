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
        
            VStack(alignment: .leading, spacing: 0){
            
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding(.top, 10)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .padding(.bottom, 10)
                    
                
                
                Text("할일 목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                    
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
