//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/23/24.
//

import SwiftUI

struct FrameBasic1: View {
    var body: some View {
        VStack(spacing : 20){
            Text("Hello, World!")
                .font(.title)
                .background(Color.green)
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color.red)
            
            Divider()
            
            Text("Hello, World!")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) //maxWidth : 최대치로 가질수 있는 너비(가로), maxHeight : 최대치로 가질수 있는 높이(세로)
            //infinity : 뷰가 화면에서 차지할수 있는 최대 공간
                .background(Color.red)
        }
    }
}

#Preview {
    FrameBasic1()
}
