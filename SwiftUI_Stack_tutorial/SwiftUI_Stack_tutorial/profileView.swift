//
//  profileView.swift
//  SwiftUI_Stack_tutorial
//
//  Created by 동현 on 2022/06/20.
//

import SwiftUI

struct profileView: View{
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false )){
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    
    var body: some View{
//        NavigationView{
         
            ScrollView{
        VStack(){
            
        
         MyCircleImageView()
                    .padding(.vertical, 20)
                
                
                Text("리본 현승")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                
                Spacer().frame(height: 20)
                
                Text("현승 사냥")
                    .font(.system(size: 25))
                    .fontWeight(.black)
                
                HStack{
                    Text("사냥하러 가기")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(20)
                    
                    Text("유튜브 보기")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(20)
                }
                .padding(20)
            Spacer()
            Spacer()
            Spacer()
        }
        
        }
            .navigationTitle("내 프로필")
        
        .navigationBarItems( trailing:
                                Button(
                                    action:{ print("호호")
                                    }){
                                        NavigationLink(destination: Text("내프로필 설정")){
                                        Image(systemName: "gear")
                                            .font(.system(size: 20))
                                            .foregroundColor(Color.black)
                                        }
                                    }
        )

            .onAppear{
                self.isNavigationBarHidden = false
            }
//        }

        
    }
}


struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
