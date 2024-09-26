//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/26/24.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea(edges: .top)
            
            VStack{
                Text("Hello, World!")
                    .font(.title)
            }
        }
        ScrollView{
            VStack{
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) {index in
                RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                        Text("\(index)번 리스트")
                        )
                }
            }
        }
        .background(
            Color.blue.ignoresSafeArea()
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}
