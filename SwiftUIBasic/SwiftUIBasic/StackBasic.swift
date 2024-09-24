//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/24/24.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
//        ZStack(alignment : .top){
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500)
//            
//            VStack(alignment : .leading, spacing : 30){
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom,spacing: 10) {
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75)
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
            
//            ZStack vs background
            VStack(spacing : 50){
                ZStack{ //layer이 복잡할때 사용
                    Circle()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    
                    Text("1")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                Text("1") //layer이 단순할때 사용
                    .font(.title)
                    .foregroundColor(.white)
                    .background(
                    Circle()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    )
        }
    }
}

#Preview {
    StackBasic()
}
