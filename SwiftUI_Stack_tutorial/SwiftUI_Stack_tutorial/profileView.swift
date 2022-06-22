//
//  profileView.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/06/20.
//

import SwiftUI

struct profileView: View{
    var body: some View{
        NavigationView{
         
            ScrollView{
        VStack(){
            
        }
         
            
        }
            .navigationTitle("내 프로필")
            .navigationBarItems( trailing:
                                    Button(
                                        action:{ print("호호")
                                        }){
                                            Image(systemName: "gear")
                                                .font(.system(size: 20))
                                                .foregroundColor(Color.black)
                                        }
            )
        }
    }
}


struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
