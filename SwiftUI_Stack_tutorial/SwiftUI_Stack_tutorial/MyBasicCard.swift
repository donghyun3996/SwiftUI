//
//  MyBasicCard.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/05/25.
//

import SwiftUI

struct MyBasicCard: View{
    
    var body: some View
    {
        HStack(spacing: 20){
            Image(systemName: "folder.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
            Text("ddd")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
            Text("ddd")
                    .foregroundColor(Color.white)
                    
            }
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    
    }
    
    
    struct MyBasicCard_Previews: PreviewProvider {
        static var previews: some View {
            MyBasicCard()
        }
    }
    
}
