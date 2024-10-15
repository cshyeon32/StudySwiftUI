//
//  FruitModel.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/12/24.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
