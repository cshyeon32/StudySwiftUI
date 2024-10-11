//
//  UserModelBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/11/24.
//

import SwiftUI

struct UserModelBasic: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "철수", userName: "철수123", followerCount: 100, isChecked: true),
        UserModel(displayName: "영희", userName: "영희희희", followerCount: 55, isChecked: false),
        UserModel(displayName: "길동", userName: "홍길동", followerCount: 300, isChecked: false),
        UserModel(displayName: "한나", userName: "한나둘", followerCount: 80, isChecked: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack (spacing: 20) {
//                        Text(user.id)
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack (alignment: .leading, spacing: 5) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }// :VStack
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }// :HStack
                    .padding(.vertical, 10)
                }// :ForEach
            }// :List
            .navigationTitle("회원 리스트")
        }// :NavigationView
    }
}

#Preview {
    UserModelBasic()
}
