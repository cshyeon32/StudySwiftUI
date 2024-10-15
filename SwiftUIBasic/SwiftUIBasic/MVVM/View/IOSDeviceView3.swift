//
//  IOSDeviceView3.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/15/24.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    // @StageObject 에서 선언한 viewModel 을 @EnvironmentOject 를 통해 가져오는거
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            ScrollView {
                VStack (spacing: 20) {
                    ForEach(viewModel.iOSDeviceArray) { item in
                        Text(item.name)
                    } //: LOOP
                } //:VSATCK
                .foregroundColor(.white)
                .font(.largeTitle)
            } //: SCROLL
        } //: ZSTACK
    }
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}
