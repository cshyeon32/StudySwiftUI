//
//  OnTabGestureBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/11/24.
//

import SwiftUI

struct OnTabGestureBasic: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            // 1. 일반적인 Button
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25.0)
            }
            
            // 2. onTabGesture 한번 클릭시 실행
            Text("2. onTabGeture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture 두번 클릭시 실행
            Text("3. onTabGeture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 3) {
                    isSelected.toggle()
                }

            Spacer()
        }//: VSTACK
        .padding(40)
    }
}

#Preview {
    OnTabGestureBasic()
}
