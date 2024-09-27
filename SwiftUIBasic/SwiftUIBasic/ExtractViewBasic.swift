//
//  ExtactViewBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/27/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    //content
    var contentLayer: some View{
        VStack{
            Text("Extact View 연습")
                .font(.largeTitle)
            
            Button{
                buttonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    //Function
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
