//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/24/24.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(spacing : 20){
            Text("Hello, World!")
                .background(Color.yellow)
                .padding() //.padding(.all, 15)
                .padding(.leading, 15) //leading 부분은 최종적으로 15 + 15 만큼 padding이 생긴다.
                .background(Color.blue)
                .padding(.bottom, 20)
            
            Divider()
            
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 지금 padding 공부를 하고 있어요. 해외여행을 가고싶어요 얼른 방학이 오면 좋겠어요")
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 10,
                        x : 10, y : 10)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
