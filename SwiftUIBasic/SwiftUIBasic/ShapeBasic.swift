//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/20/24.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing: 20){
            Text("원형")
                .font(.title)
            Circle()
            //                .fill(Color.blue) //색상 추가 fill이 foregroundColor보다 앞면에 위치
            //                .foregroundColor(.pink)
            //                .stroke(Color.gray, lineWidth: 30) //태두리 색상, 굵기
            //                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [50])) //lineCap 은 square, butt, round로 변경이 가능하고, dash는 간견이다.
                .trim(from: 0.2) //0이 왼쪽이고, 1이 오른쪽이다.
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 200, height: 100)
                .padding()
            
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(.green)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular) // continuous는 쫌더 원형모양이고, circular는 더 원형모양이다.
                .stroke(.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("둥근 직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4)
                .frame(width: 200, height: 100, alignment: .center)
        }
    }
}

#Preview {
    ShapeBasic()
}
