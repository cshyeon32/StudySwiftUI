//
//  ImageBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/23/24.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack(spacing : 20){
            Image("USA")
                .resizable()//사이즈 조절
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)
            
        Divider()
            
            Image("USA")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle()) //잘라서 형태를 생성
        }
    }
}

#Preview {
    ImageBasic()
}
