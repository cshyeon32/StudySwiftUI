//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/1/24.
//

import SwiftUI
//NavigationView : 네비게이션 스택을 사용 다른 화면으로 전환
//NavigationLink : event 또는 특정 조건을 만족시킬시 지정한 목적지로 이동 버튼
struct NavigationBasic: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink {
                    //destination : 목적지 -> 어디로 페이지를 이동시킬지 작성
                    SecondNavigationView()
                } label: {
                    //버튼 디자인 부분
                    Text("Second Navigation View 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
            }// : VStack
            .navigationTitle("페이지 제목") //폰트 사이즈와 위치 기본적으로 나타남
            //navigationBarTitleDisplayMode - 상당 페이지 제목 스타일
            // .automatic: 자동, inline - 상단에 작게, large : leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.automatic)
            // navigationBarHidden - 네이게이션 타이틀, 바를 감추는 코드
            // .navigationBarHidden(true)
            
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button{
                    showSheet.toggle()
                } label: {
                    Image(systemName: "gear")
                })
        }// : NavigationView
        .sheet(isPresented: $showSheet) {
            ZStack{
                Color.green.ignoresSafeArea()
                Text("설정 페이지 입니다.")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    NavigationBasic()
}
