//
//  IOSDeviceView1.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/15/24.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    // 처음 ViewModel 을 초기화 할때는 @StateObject 로 불러오기!
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.iOSDeviceArray) { item in
                    NavigationLink {
                        // destination
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    } //: LINK
                } //: LOOP
            } //: LIST
        } //: NAVIGATION
        // Navigation 하위 뷰에 ViewModel 을 environmentObject 로 넘겨준다
        .environmentObject(viewModel)
    }
}

#Preview {
    IOSDeviceView1()
}
