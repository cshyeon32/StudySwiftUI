//
//  SliderBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/11/24.
//

import SwiftUI

struct SliderBasic: View {
    @State var slidervalue: Double = 3
    @State var color: Color = .blue
    
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                Text("레벨:")
                Text("\(slidervalue)")
                Text(String(format: "%.0f", slidervalue))
            } //:HSTACK
            .foregroundColor(color)
            // value 는 항상 float (double) Int 가 아닌 float 타입으로 설정하단.
            // in : 슬라이더의 범위 설정한다.
            // step : 단계 설정 슬라이더가 어떤 단위로 증가 감소 되는지 설정이다.
            // onEditingChanged: 슬라이더 value 가 변경이 되면 처리할 이벤트이다.
            Slider(
                value: $slidervalue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .red
                },
                // 최소, 최대값 라벨
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("라벨")
                })
            .accentColor(.red)
            .padding()
        } //: VSTACK
    }
}

#Preview {
    SliderBasic()
}
