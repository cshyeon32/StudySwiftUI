//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/30/24.
//

import SwiftUI

//.sheet : 현재 View에서 약 90% 부분 정도 overlay 되는 View
//.fullScreenCover : 현재 View에서 전체 부분 overlay 되는 View
struct SheetBasic: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
            }
            
//            .fullScreenCover(isPresented: $showSheet, content: {
//            Text("hello")
//            })
        }
    }
}

#Preview {
    SheetBasic()
}
