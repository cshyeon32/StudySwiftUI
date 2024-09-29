//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/27/24.
//

import SwiftUI

struct BindingChild: View {
    //@Binding : 값을 받아옴
    @State var buttonColor : Color = Color.blue
    @Binding var backgroundColor : Color
    @Binding var title : String
    
    var body: some View {
        Button {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "Binding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal) //좌우
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingChild(backgroundColor: .constant(Color.orange), title: .constant("Binding Child"))
        .previewLayout(.sizeThatFits)
}
