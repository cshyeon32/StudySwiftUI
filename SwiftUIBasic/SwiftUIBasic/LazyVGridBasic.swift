//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/26/24.
//

import SwiftUI
//List : 일반적인 목록 배열 방식
//Grid : box형태로 나타나는 배열 방식
struct LazyVGridBasic: View {
    //columns의 갯수를 3개로 설정
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        //LazyVGrid
        ScrollView{
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                Section(header: Text("Section1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach (0..<20) {index in
                    Rectangle()
                            .fill(Color.gray)
                            .frame(height: 150)
                            .overlay(
                            Text("\(index)번")
                            )
                    }
                }//Section1
                Section(header: Text("Section2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ){
                    ForEach (0..<20) {index in
                    Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                            .overlay(
                            Text("\(index)번")
                            )
                    }
                }//Section2
            }
            
        }
    }
}

#Preview {
    LazyVGridBasic()
}
