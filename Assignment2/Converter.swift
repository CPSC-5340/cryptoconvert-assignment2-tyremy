//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Converter: View {
    
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        ScrollView {
            Text("1 USD Exchange Rate")
                .fontWeight(.bold)
                .padding()
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 0)], spacing: 30) {
                ForEach(viewModel.listOfCards) {card in
                    CurrencyItem(card: card)
                        .onTapGesture {
                            viewModel.flip(card: card)
                        }
                }
            }
            
        }.onAppear() {
            viewModel.fetchCards()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Converter()
    }
}
