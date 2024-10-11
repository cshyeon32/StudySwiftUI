//
//  DarkModeBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/11/24.
//

import SwiftUI

struct DarkModeBasic: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    // primary and secondary color 는 자동으로 다크 모드일때 색 변환 된다.
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    // 일반적인 black , white 는 고정값이ㅏㄷ.
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    // Asset 에서 adaptive 라는 이름의 color Set 을 만든 후 light, dark mode 에서 색을 설정해줄 수 있다.
                    Text("Asset 에서 Adpative 색 설정")
                        .foregroundColor(Color("AdaptiveColor"))
                    // @Environment 사용해서 colorSchme 사용한다
                    Text("@Environment 사용해서 Adpative 색 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                }
            }//: SCROLL
        } //:NAVIGATION
    }
}

#Preview {
    DarkModeBasic()
}
