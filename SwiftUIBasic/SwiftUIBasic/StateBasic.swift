//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/27/24.
//

//@ - property Wrapper : 프로퍼티가 저장되는 방식을 관리하는 코드를 추가 시키는 것(재사용 가능)
//@State - 변수가 변경될때, View 에서도 update되면서 값이 변경되기 원할때 사됻

import SwiftUI

struct StateBasic: View {
    //@State 는 변경될때 사용
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing : 20){
                Text(myTitle)
                    .font(.title)
                Text("카운트 : \(count)") //int 형은 \()안에 작성한다.
                
                HStack(spacing : 20){
                    Button{
                        self.backgroundColor = .red //state를 사용할때는 self.를 생략할수 있다.
                        myTitle = "+버튼 눌림"
                        count += 1
                    } label: {
                        Text("+버튼")
                    }
                    
                    Button{
                        backgroundColor = .blue
                        myTitle = "-버튼 눌림"
                        count -= 1
                    } label: {
                        Text("-버튼")
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
