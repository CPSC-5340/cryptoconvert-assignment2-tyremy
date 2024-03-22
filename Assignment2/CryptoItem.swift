//
//  CryptoItem.swift
//  Assignment2
//
//  Created by Tyler Remy on 3/22/24.
//

import SwiftUI

struct CryptoItem: View {
    
    var card : ConvertModel<CryptoItemModel>
    var btc : Double
    var body: some View {
        
        cryptoItem(card: card.cardContent, btc: btc)
        
    }
}

struct cryptoItem: View {
    
    var card: CryptoItemModel
    var btc: Double
    
    var body: some View {
        HStack {
            Text(card.cryptoName)
            Spacer()
            Text("\(card.multiplier * btc, specifier: "%.1f")")
        }
    }
}


#Preview {
    CryptoItem(card: ConvertModel(cardContent: CryptoItemModel(cryptoName: "Ethereum", cryptoCode: "ETH", multiplier: 18.9)), btc: 2.0)
}
