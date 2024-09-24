//
//  ScrollView.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/24/24.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        ScrollView(.vertical , showsIndicators: true){
            LazyVStack{
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack{
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}

