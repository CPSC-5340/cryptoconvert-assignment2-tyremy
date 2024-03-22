//
//  CryptoConverterViewModel.swift
//  Assignment2
//
//  Created by Tyler Remy on 3/21/24.
//

import Foundation

class CryptoConverterViewModel : ObservableObject {
    
    @Published private(set) var listOfCryptos = [ConvertModel<CryptoItemModel>]()
    
    func fetchCards() {
        self.listOfCryptos = [
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD", multiplier: 65520.3)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Ethereum", cryptoCode: "ETH", multiplier: 18.9)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Tether", cryptoCode: "USDT", multiplier: 65435.2)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "BNB", cryptoCode: "BNB", multiplier: 112.37)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "USD Coin", cryptoCode: "USDC", multiplier: 65418.1)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "XRP", cryptoCode: "XRP", multiplier: 103684.2))
        ]
    }
    
}
