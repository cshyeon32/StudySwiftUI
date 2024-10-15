//
//  AppStorageBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/15/24.
//

import SwiftUI

struct AppStorageBasic: View {
    // 일반적인 Data
    @State var generalName: String?
    
    // App Storage 을 사용하면 앱을 다시 열때 자동으로 키에서 이름을 가져옵니다
    @AppStorage("name") var appStrageName: String?
    
    var body: some View {
        VStack (spacing: 20) {
            // 일반적인 State
            VStack (spacing: 10){
                Text("@State 로 저장")
                    .font(.headline)
                Text(generalName ?? "당신의 이름은 무었인가요?")
                Button {
                    generalName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }
            }
            .padding()
            .border(.green)
            
            // @AppStorage 사용
            VStack (spacing: 10){
                Text("@AppStorage 로 저장")
                    .font(.headline)
                Text(appStrageName ?? "당신의 이름은 무었인가요?")
                
                Button {
                    appStrageName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }
            }
            .padding()
            .border(.red)
        }
    }
}

#Preview {
    AppStorageBasic()
}
