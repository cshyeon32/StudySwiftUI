//
//  TernaryBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/30/24.
//

import SwiftUI
//삼항연산자
//? True일때 실행되는 logic
//: False일때 실행되는 logic
struct TernaryBasic: View {
    
    @State var isStaringState : Bool = false
    
    var body: some View {
        VStack {
            
            //if-else 조건문
            Button{
                isStaringState.toggle()
            } label: {
                Text("if elsd 버튼 : \(isStaringState.description)")
            }
            
            if isStaringState{
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.purple)
                    .frame(width: 200, height: 100)
            }
            
            //삼항연산자
            Button{
                isStaringState.toggle()
            } label: {
                Text("삼항연산자 버튼 : \(isStaringState.description)")
            }
            
            Text(isStaringState ? "파랑" : "보라")
//            if isStaringState {
//                Text("파랑")
//            } else {
//                Text("보라")
//            }
            
            RoundedRectangle(cornerRadius: isStaringState ? 25 : 0)
                .fill(isStaringState ? Color.blue : Color.purple)
                .frame(width: isStaringState ? 200 : 50,
                       height: isStaringState ? 400 : 100)
        }
        Spacer()
    }
}

#Preview {
    TernaryBasic()
}
