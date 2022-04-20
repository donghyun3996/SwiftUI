//
//  ContentView.swift
//  SwiftUI_text_tutorial
//
//  Created by 동현 on 2022/04/20.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormet: DateFormatter = {
        let formetter = DateFormatter()
        formetter.dateFormat = "YYYY년 M월 d일"
        return formetter
    }()
    
    let number: Int = 123
    
    let trueOrFalse: Bool = false
    
    let today = Date()
    
    var body: some View {
        VStack{
        Text("Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!")
            .tracking(2)
            .font(.system(.body, design: .rounded))
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .lineSpacing(10)
            .truncationMode(.middle)
            .shadow(color: Color.red, radius: 1.5, x: 10, y: 10)
            .padding(20)
            .background(Color.yellow)
            .cornerRadius(10)
            .padding(10)
            .background(Color.green)
            .cornerRadius(10)
            .padding()
        Text("안녕하세요")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜: \(today, formatter: ContentView.dateFormet)")
            Text("진실 혹은 거짓: \(String(trueOrFalse))")
            Text("\(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
