//
//  FrameBasic2.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/23/24.
//

import SwiftUI

struct FrameBasic2: View {
    var body: some View {
        VStack(spacing : 20){
            Text("Hello, World!")
                .font(.title)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
        }
    }
}

#Preview {
    FrameBasic2()
}
