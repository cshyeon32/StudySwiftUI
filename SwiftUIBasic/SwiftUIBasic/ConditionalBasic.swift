//
//  ConditionalBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/30/24.
//

import SwiftUI

struct ConditionalBasic: View {
    
    @State var showCircle : Bool = false
    @State var showRectangel : Bool = false
    @State var isLoding : Bool = false
    
    var body: some View {
        VStack(spacing : 20){
            //로딩 버튼
            Button {
                isLoding.toggle() //toggle()은 누르는거 반대로 전환 false -> true
            } label: {
                Text("로드중...: \(isLoding.description)") //description 불리언 값을 텍스트 타입으로 나타냄
            }
            //로딩 이미지
            if isLoding {
                ProgressView() //로딩 뷰
            }
            //원형 버튼
            Button{
                showCircle.toggle()
            } label: {
                Text("원형 버튼: \(showCircle.description)")
            }
            //사각형 버튼
            Button{
                showRectangel.toggle()
            } label: {
                Text("사각형 버튼: \(showRectangel.description)")
            }
            //showCircle이 true일때
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            //showRectangel이 true일때
            if showRectangel {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            //showCircle과 showRectangel이 false일때
            if showCircle == false && showRectangel == false { //!showCircle && !showRectangel
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 100)
            }
            //showCircle 또는 showRectangel이 true일때
            if showCircle || showRectangel {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.pink)
                    .frame(width: 200, height: 100)
            }
            Spacer()
        }
    }
}

#Preview {
    ConditionalBasic()
}
