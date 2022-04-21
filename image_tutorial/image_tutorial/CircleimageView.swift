//
//  CircleimageView.swift
//  image_tutorial
//
//  Created by 동현 on 2022/04/21.
//

import SwiftUI


struct CircleimageView: View{
    var body: some View
    {
        Image("myImage")
            
            .scaledToFit()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay(Circle().foregroundColor(Color.black).opacity(0.5))
            .overlay(
                Text("문문")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
            )

            .overlay(Circle().stroke(Color.purple, lineWidth: 10 ))
            
    }
    
    
}

struct CircleimageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleimageView()
    }
}
