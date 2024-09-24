//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/24/24.
//

import SwiftUI

struct VStackBasic: View {
    var body: some View {
        VStack(alignment: .center, spacing :20){
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    VStackBasic()
}
