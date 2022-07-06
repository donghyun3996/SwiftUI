//
//  MyCustomTabView.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/07/06.
//

import SwiftUI

struct MyCustomtabView: View{
    
    enum TabIndex{
        case home, cart, profile
    }
    
    @State var tabIndex : TabIndex
    
    func changeMyView (tabIndex: TabIndex) -> MyView{
        switch tabIndex {
        case .home:
           return MyView(title: "홈", bgColor: Color.green)
        case .cart:
           return MyView(title: "장바구니", bgColor: Color.purple)
        case .profile:
           return MyView(title: "프로필", bgColor: Color.blue)
        default:
           return MyView(title: "홈", bgColor: Color.green)
 
        }
    }
    
    var body: some View
    {
        GeometryReader{ G in
            ZStack(alignment: .bottom){
            self.changeMyView(tabIndex: self.tabIndex)
                HStack(spacing: 0){
                    
                    Button(action:{
                        print("홈 클릭")
                    }){
                        Image(systemName: "house.fill")
                            .font(.system(size: 25))
                            .frame(width: G.size.width / 3, height: 40)
                    }.background(Color.orange)
                    
                    
                    Button(action:{
                        print("장바구니 클릭")
                    }){
                        Image(systemName: "cart.fill")
                            .font(.system(size: 25))
                            .frame(width: G.size.width / 3, height: 40)
                    }.background(Color.yellow)
                    
                    
                    Button(action:{
                        print("프로필 클릭")
                    }){
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 25))
                            .frame(width: G.size.width / 3, height: 40)
                    }.background(Color.white)
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}


struct MyCustomtabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomtabView(tabIndex: .home)
    }
}
