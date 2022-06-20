//
//  MyList.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/05/30.
//

import SwiftUI

struct MyList: View{
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false )){
        if #available(iOS 14.0, *){
            
        }else{
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    
    var body: some View{
//        List{
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//
//        }
        List{
            
             Section(header: Text("오늘 할 일")
                .font(.headline)
                .foregroundColor(Color.black)
                , footer: Text("footer")){
             
            ForEach(1...3, id: \.self){ itemIndex in
                MyCard(icon: "book.fill", title: "책읽기\(itemIndex)", start: "1 PM", end: "2 PM", bgColor: Color.green)
            }
        }
        .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10 ))
            Section(header: Text("내일 할 일").font(.headline)
                .foregroundColor(Color.black)){
                ForEach(1...20, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책읽기\(itemIndex)", start: "1 PM", end: "2 PM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10 ))
            .listRowBackground(Color.yellow)
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("내 목록 ")
        .listRowSeparator(.hidden)
//        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = false
    }
        
        }
   
}
    struct MyList_Previews: PreviewProvider {
        static var previews: some View {
            MyList()
        }
    }

