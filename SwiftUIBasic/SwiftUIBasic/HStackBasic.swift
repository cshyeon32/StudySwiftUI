//
//  HStackBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/24/24.
//

import SwiftUI

struct HStackBasic: View {
    var body: some View {
        HStack(spacing : 20){
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    HStackBasic()
}
