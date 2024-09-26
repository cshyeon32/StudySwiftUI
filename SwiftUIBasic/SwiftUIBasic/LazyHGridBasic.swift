//
//  LazyHGridBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/26/24.
//

import SwiftUI

struct LazyHGridBasic: View {
    
    let title: [String] = Array(1...1000).map{"목록\($0)"}
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 38)),
    ]
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack{
                        Capsule()
                            .fill(Color.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyHGridBasic()
}
