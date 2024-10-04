//
//  ListBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/2/24.
//

import SwiftUI
//List : 세로 방향으로 아이템들을 순서대로 표현하는 방식
struct ListBasic: View {
    
    @State var fruits : [String] = [
        "사과", "오렌지", "수박", "바나나"
    ]
    
    @State var meats : [String] = [
    "소고시", "돼지고기", "닭고기"
    ]

    var body: some View {
        NavigationView{
            List{
                Section{
                    ForEach(fruits, id: \.self) {fruits in
                        Text(fruits)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue) //리스트 색상
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .foregroundColor(.brown)
                }
                Section{
                    ForEach(meats, id: \.self) { meats in
                        Text(meats)
                    }
                } header: {
                    Text("고기 종류")
                        .font(.headline)
                        .foregroundColor(.red)
                }
            }
            .navigationTitle("우리 동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
    }
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    var addButton: some View{
        Button{
            fruits.append("딸기")
        } label: {
            Text("Add")
        }
    }
}

#Preview {
    ListBasic()
}
