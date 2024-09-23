//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/23/24.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing : 20){
            Image(systemName: "person.fill.badge.plus")
                .resizable() //최대한 크기를 회면에 맞추기
                .renderingMode(.original) //original : 실제 color 에서 multi color 로 변경
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 30)
        }
    }
}

#Preview {
    IconBasic()
}
