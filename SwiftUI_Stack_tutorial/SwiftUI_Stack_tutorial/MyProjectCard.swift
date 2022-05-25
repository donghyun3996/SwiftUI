//
//  MyProjectCard.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/04/28.
//

import SwiftUI

struct MyProjectCard: View{
    var body: some View
    {
        VStack(alignment: .leading){
            Rectangle().frame( height: 0 )
            Text("이동현 유튜브 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10시 10분")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack{
                Image("Image1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(.blue)
                    }
                Image("Image1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("Image1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Text("확인")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 80)
                    .background(Color.blue)
                    .cornerRadius(20)
                    
            }
            
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
        
    }
    
    
    struct MyProjectCard_Previews: PreviewProvider {
        static var previews: some View {
            MyProjectCard()
        }
    }
}
