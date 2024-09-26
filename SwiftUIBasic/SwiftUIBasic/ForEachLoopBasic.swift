//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/26/24.
//

import SwiftUI

struct ForEachLoopBasic: View {//Text를 출력할때 Text("\(count)")이렇게 쓰는거랑 Text(item)이렇게 쓰는게 뭐가 다를까?
    
    //변수 생성
    var data: [String] = ["Hi", "Hello", "Hey everone"]
    
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                HStack{
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호 : \(index)번")
                }
            }
            Divider()
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    ForEachLoopBasic()
}
 
