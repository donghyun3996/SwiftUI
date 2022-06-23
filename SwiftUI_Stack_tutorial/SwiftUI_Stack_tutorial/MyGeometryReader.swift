//
//  MyGeometryReader.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/06/22.
//

import SwiftUI

struct MyGeometryReader: View{
    
    enum Index{
        case one, two, three
    }
    
    @State var index : Index = .one
    
    let centerPosition : (GeometryProxy) -> CGPoint = { G in
        return CGPoint(x: G.frame(in: .local).midX, y: G.frame(in: .local).midY)
    }

    var body: some View{
        VStack(alignment: .center){
        GeometryReader{ G in
                
            VStack{
                
                Button(action:{
                    print("1")
                    self.index = .one
                }){
                    
            Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .frame(width: 100, height: G.size.height/3)
                    .padding(.horizontal, self.index == .one ? 50:0)
                    .background(Color.red)
                    
                }
                
                Button(action:{
                    print("2")
                    self.index = .two
                }){
                    
        Text("2")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
                .frame(width: 100, height: G.size.height/3)
                .padding(.horizontal, self.index == .two ? 50:0)
                .background(Color.blue)
                }
                
                Button(action:{
                    print("1")
                    self.index = .three
                }){
                    
        Text("3")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
                .frame(width: 100, height: G.size.height/3)
                .padding(.horizontal, self.index == .three ? 50:0)
                .background(Color.green)
        }
            
            }
            .position(centerPosition(G))
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
        
    }
    
}
