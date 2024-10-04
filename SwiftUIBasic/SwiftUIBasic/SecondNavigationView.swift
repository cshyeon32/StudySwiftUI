//
//  SecondNavigationView.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/1/24.
//

import SwiftUI

struct SecondNavigationView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            VStack{
                Button{
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                NavigationLink {
                    ZStack{
                        Color.red.ignoresSafeArea()
                            Text("3번째 페이지 입니다.")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("3번째 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}

#Preview {
    SecondNavigationView()
}
