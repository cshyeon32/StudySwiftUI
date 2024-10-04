//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/30/24.
//

import SwiftUI

//move : 단방향 이동 Transition
//opacity : 투명도 조절 Transition
//scale : 크기 조절 Transition
//asymmetric ㅣ 비대칭 방향 이동 Transition(시작과 끝부분 설정)
struct TransitionBasic: View {
    
    @State var showTrasition : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                Button {
                    withAnimation(.easeInOut) {
                        showTrasition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTrasition {
                RoundedRectangle(cornerRadius: 30)
//                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showTrasition ? 1.0 : 0.0)
                    
                //1 move transition
//                    .transition(.move(edge: .bottom))
                
                //2 opacity transition
//                    .transition(.opacity)
                
                //scale transition
//                    .transition(.scale)
                
                //asymmetric transition
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges : .bottom)
    }
}

#Preview {
    TransitionBasic()
}
