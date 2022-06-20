//
//  MyNavigationView.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/05/30.
//

import SwiftUI

struct MyNavigarionView: View{
    var body: some View{
        NavigationView{
            
//        Text("MyNavigationView")
            
            MyList()
                .navigationTitle("안녕하세요")
//                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarItems(leading:
                Button(action:{
                    print("호호")
                }){
                    Text("호호")
                }
                ,trailing:
                NavigationLink(destination: Text("넘어온 화면입니다.")){
//                    Text("네비게이션")
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                }
                )
            
        }
          
    }
}


struct MyNavigarionView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigarionView ()
    }
}
