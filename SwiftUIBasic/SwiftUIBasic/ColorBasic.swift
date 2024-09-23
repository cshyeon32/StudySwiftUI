//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/23/24.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack (spacing : 20){
            Text("Basic Color")
                .font(.title )
            RoundedRectangle(cornerRadius: 25)
                .fill(.purple)
                .frame(width: 300, height: 100, alignment: .center)
            
            Text("Primary Color")
                .font(.title )
            RoundedRectangle(cornerRadius: 25)
                .fill(.secondary) //primary, secondary
                .frame(width: 300, height: 100, alignment: .center)
            
            Text("UI Color")
                .font(.title )
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100, alignment: .center)
            
            Text("Custom Color")
                .font(.title )
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("Custom Color"))
                .frame(width: 300, height: 100, alignment: .center)
        }
    }
}

#Preview {
    ColorBasic()
}
