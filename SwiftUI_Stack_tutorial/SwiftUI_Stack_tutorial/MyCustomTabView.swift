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
    
    @State var largerScale : CGFloat = 1.5
    
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
    
    func changeColor (tabIndex: TabIndex) -> Color{
        switch tabIndex {
        case .home:
            return Color.green
        case .cart:
            return Color.purple
        case .profile:
            return Color.blue
        default:
            return Color.green
 
        }
    }
    
    func calcCircleBgPosition(tabIndex: TabIndex, G: GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return -(G.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return (G.size.width / 3)
        default:
            return -(G.size.width / 2)
 
        }
    }
    
    var body: some View
    {
        GeometryReader{ G in
            ZStack(alignment: .bottom){
            self.changeMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: self.calcCircleBgPosition(tabIndex: self.tabIndex, G: G), y: 20)
                    .foregroundColor(Color.white)
                
                HStack(spacing: 0){
                    
                    Button(action:{
                        print("홈 클릭")
                        
                        withAnimation{
                            self.tabIndex = .home
                        }
                        
                        
                    }){
                        Image(systemName: "house.fill")
                            .font(.system(size: 25))
                            .frame(width: G.size.width / 3, height: 40)
                            .scaleEffect(self.tabIndex == .home ?  self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .home ? self.changeColor(tabIndex: self.tabIndex) : Color.gray)
                            .offset(y: self.tabIndex == .home ? -10 : 0)
                    }.background(Color.white)
                    
                    
                    Button(action:{
                        print("장바구니 클릭")
                        
                        withAnimation{
                            self.tabIndex = .cart

                        }
                    }){
                        Image(systemName: "cart.fill")
                            .font(.system(size: 25))
                            .frame(width: G.size.width / 3, height: 40)
                            .scaleEffect(self.tabIndex == .cart ?  self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .cart ? self.changeColor(tabIndex: self.tabIndex) : Color.gray)
                            .offset(y: self.tabIndex == .cart ? -10 : 0)
                    }.background(Color.white)
                    
                    
                    Button(action:{
                        print("프로필 클릭")
                        
                        withAnimation{
                            self.tabIndex = .profile

                        }
                    }){
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 25))
                            .frame(width: G.size.width / 3, height: 40)
                            .scaleEffect(self.tabIndex == .profile ?  self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .profile ? self.changeColor(tabIndex: self.tabIndex) : Color.gray)
                            .offset(y: self.tabIndex == .profile ? -10 : 0)
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
