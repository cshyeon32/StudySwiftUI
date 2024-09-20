//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/20/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20)/*text 간의 간격*/{
            //폰트 사이즈를 지정된걸로 하면, 반응형
            Text("안녕, Text")
                .font(.title)
                .bold() //같은 속성(굵기)에 대한 것이라면 위에 있는 속성이 적용이 된다.
                .fontWeight(.semibold) //.semibold 와 같은 코드이다.
                .underline(true, color: Color.pink) //bool 값으로 조절 할수 있고, 색갈을 줄수 있다.
                .italic() //한국어는 적용이 안됨
                .strikethrough(true, color: Color.green)
            
            //폰트 사이즈를 지정하여 사용하면, 고정형
            Text("Text font 지정".uppercased()) //uppercased, lowercased를 사용하여, 대소문자로 만들수 있다.
                .font(.system(size: 25, weight: .semibold, design: .serif)) //사이즈, 굵기, 폰트를 지정하여 사용할수 있다.
            Text("멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 멑티라인 ")
                .multilineTextAlignment(.center) //leading, center, trailing 을 사용해 글을 정렬할수 있다.
                .foregroundColor(.accentColor) //글 색상을 지정할수 있다.
            
        }
    }
}

#Preview {
    TextBasic()
}
