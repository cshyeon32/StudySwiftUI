//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/30/24.
//

import SwiftUI

struct BindingBasic: View {
    @State var backgroundColor : Color = Color.green
    @State var title : String = "Binding Basic View"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack{
                Text(title)
                    
                //buttom
                //파라미터로 @State 앞에 $를 붙여줌
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
