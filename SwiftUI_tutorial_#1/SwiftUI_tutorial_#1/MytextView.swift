//
//  MytextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 동현 on 2022/04/20.
//

import SwiftUI

struct MytextView: View{
    //@State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var index: Int = 0
    
    @Binding
    var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
    }
    
    // 배경색 배열
        private let backgroundColor = [
            Color.red,
            Color.yellow,
            Color.blue,
            Color.green,
            Color.orange
        ]
    
    
    var body: some View{
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(isActivated ? Color.yellow : Color.gray)
            
            Spacer()
            
        }
        .background(backgroundColor[index])
        .onTapGesture {
            if(self.index == self.backgroundColor.count - 1){
                self.index = 0
            } else{
            
            self.index += 1
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            MytextView()
        }
}
}
