//
//  AnimationBasic3.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/30/24.
//

import SwiftUI

//Animation : 시작, 상태변환, 도착 3가지 단계로 어더한 로직이 실행할때 Object의 동적인 움직임을 말함
//시작 : View 의 최초 상태
//상태변화 : View 가 최초상태에서 멈추는 진행과정 상태
//도착 : View 가 도달하려는 목표 지점, 도착하면 멈춘는 상태
struct AnimationBasic: View {
    // property
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    var body: some View {
        
        // 1번 View
        VStack{
            Button{
                withAnimation(
                    .default
//                        .repeatCount(5)//5번 반복
//                        .repeatForever()//계속 반복
                        .delay(1.0)//버튼 누르고 1초뒤 실행
                ) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 20)
                .fill(isAnimated ? Color.green : Color.blue)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0)) //회전
                .offset(y : isAnimated ? 300 : 0) //위치
            
            Spacer()
        }
        
    }
}

struct AnimationBasic2: View {
    // property
    @State var isAnimated: Bool = false
    let timing: Double = 5.0
    
    var body: some View {
        // 2번 View - Speed에 따른 animation
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            
            // liner animation : 처음부터 끝까지 속도가 일정
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            // easeIn animation : 처음에 느렸다가 끝에 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut animation : 처음엔 빨랐다가 끝에 느려지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // easeInOut animation : 처음과 끝에 느려지고, 중간부분이 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
        }
    }
}

struct AnimationBasic3: View {
    // property
    @State var isAnimated: Bool = false
    
    var body: some View {
        // 3번 View - Spring animation
        VStack {
            Button {
                // respose: 단일 진동을 완료하는 데 걸리는 시간
                // damping: 얼마나 빠르게 스프링이 정지하는 속도제어 만약 0일때 영원 멈추지 않음  0 ~ 1.0
                // blendDuration : 다른 에니메이션 간의 전환 길이 제어
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0)) {
                        isAnimated.toggle()
                    }
            } label: {
                Text("Button")
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)

        }
    }
}

// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview("1.Time Animation") {
    AnimationBasic()
}

#Preview("2.Speed Animation") {
    AnimationBasic2()
}

#Preview("3.Spring Animation") {
   AnimationBasic3()
}
