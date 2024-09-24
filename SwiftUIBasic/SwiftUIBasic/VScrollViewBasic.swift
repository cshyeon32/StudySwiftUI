//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/24/24.
//

import SwiftUI

struct VScrollViewBasic: View {
    var body: some View {
        //세로 스크롤
        ScrollView(.vertical, showsIndicators: false)/*showsIndicators(스크롤뷰 표시 여부)*/{
            VStack{
                ForEach(0..<59) {
                    index in Rectangle()
                        .fill(Color.blue)
                        .frame(height: 300)
                        .overlay(Text("\(index)번"))
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    VScrollViewBasic()
}
