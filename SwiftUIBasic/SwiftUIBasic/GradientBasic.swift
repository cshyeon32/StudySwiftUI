//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 9/23/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing : 20){
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                               startPoint: .topTrailing,
                               endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [Color.yellow, Color.purple]),
                                   center: .leading,
                                   startRadius: 5,
                                   endRadius: 300)
                )
                .frame(width: 300, height: 200)
            
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue, Color.green]),
                        center: .topLeading,
                        angle: .degrees(20))
                    )
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    GradientBasic()
}
