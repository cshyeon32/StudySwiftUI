//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/24/24.
//

import SwiftUI

struct InitEnumBasic: View {
    //변수 선언
    let backgroundColor : Color
    let count : Int
    let title : String
    
    //enum 생성
    enum Fruit { //연관된 값들의 집합을 공통된 타입으로 정의하는 것 (폴더 역할)
        case apple
        case orange
    }
    
    //init 함수 생성
    init(count: Int, fruit: Fruit) { //view 가 초기화 될때 실행 되는 함수
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing : 20){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack{ //임의의 값 샘플로 작성
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 46, fruit: .orange)
    }
}
