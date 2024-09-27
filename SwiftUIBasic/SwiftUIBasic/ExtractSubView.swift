//
//  ExtractSubView.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/27/24.
//

import SwiftUI

struct ExtractSubView: View {
    var body: some View {
        ZStack{
            Color.cyan
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    var contentLayer:some View {
        HStack{
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "오렌지", count: 10, color: .orange)
            ItemBasic(title: "바나나", count: 34, color: .yellow)
          
        }
    }
}

#Preview {
    ExtractSubView()
}
