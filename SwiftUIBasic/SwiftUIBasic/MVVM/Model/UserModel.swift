//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/11/24.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    var displayName: String
    var userName: String
    var followerCount: Int
    var isChecked: Bool
}
