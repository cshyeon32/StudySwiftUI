//
//  FruitBasic.swift
//  SwiftUIBasic
//
//  Created by dgsw8th07 on 10/12/24.
//

import SwiftUI

struct FruitBasic: View {
    
    //    @ObservedObject var fruitViewModel = FruitViewModel()
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack (spacing: 20) {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                }
            }
//            .onAppear {
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: SecondScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        }))
            .navigationTitle("과일 리스트")
        }
    }
}

struct SecondScreen: View {
    
    @ObservedObject var fruitViewModel = FruitViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            VStack(spacing:20){
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                Button{
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("뒤로 가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    FruitBasic()
}
