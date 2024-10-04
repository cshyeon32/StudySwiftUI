//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/30/24.
//

import SwiftUI

struct SheetBasic2: View {
    
    @Environment(\.presentationMode) var presentationMode //현재 바인딩 된 프리젠테이션을 찾아내 나다낸것
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button{
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

#Preview {
    SheetBasic2()
}
