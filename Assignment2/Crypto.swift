//
//  Crypto.swift
//  Assignment2
//
//  Created by Tyler Remy on 3/22/24.
//

import SwiftUI

struct Crypto: View {
    
    @ObservedObject var viewModel = CryptoConverterViewModel()
    @State var btc = 1
    @FocusState var isFocus : Bool
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    var body: some View {
        
        //Rectangle()
        //.fill(.white)
        ZStack {
            VStack{
                HStack{
                    Text("Bitcoin: ")
                    TextField("Amount", value: $btc, formatter: formatter)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.numberPad)
                        .focused($isFocus)
                }.padding()
                
                Spacer()
                List{
                    ForEach(viewModel.listOfCryptos) {card in
                        CryptoItem(card: card, btc: Double(btc))
                    }
                }.onAppear() {
                    viewModel.fetchCards()
                }
                .frame(maxWidth: .infinity)
                .listStyle(GroupedListStyle())
            }
        }.onTapGesture {
            isFocus = false
        }
    }
}

struct CryptoView_Previews: PreviewProvider {
    static var previews: some View {
        Crypto()
    }
}
