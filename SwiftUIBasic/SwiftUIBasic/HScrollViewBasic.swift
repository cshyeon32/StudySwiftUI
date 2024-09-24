//
//  HScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/24/24.
//

import SwiftUI

struct HScrollViewBasic: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(0..<59) {
                    index in Rectangle()
                        .fill(Color.blue)
                        .frame(width: 300, height: 300)
                        .overlay(Text("\(index)번"))
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    HScrollViewBasic()
}
