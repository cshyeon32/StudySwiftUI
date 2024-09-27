//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/27/24.
//

import SwiftUI

struct ItemBasic: View {
    
    var title: String
    var count: Int
    var color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    ItemBasic(title: "사과", count: 1, color: .red)
}
