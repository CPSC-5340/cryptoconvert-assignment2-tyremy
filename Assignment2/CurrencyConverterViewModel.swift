//
//  ConverterViewModel.swift
//  Assignment2
//
//  Created by Tyler Remy on 3/21/24.
//

import Foundation

class CurrencyConverterViewModel : ObservableObject {
    
   @Published private(set) var listOfCards = [ConvertModel<CurrencyItemModel>]()
    
    func fetchCards() {
        self.listOfCards = [
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", countryFlag: "🇺🇸", multiplier: 1)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "British Pound", currencyCode: "GBP", countryFlag: "🇬🇧", multiplier: 0.79)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Indian Rupee", currencyCode: "INR", countryFlag: "🇮🇳", multiplier: 83.20)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Australian Dollar", currencyCode: "AUD", countryFlag: "🇦🇺", multiplier: 1.52)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Canadian Dollar", currencyCode: "CAD", countryFlag: "🇨🇦", multiplier: 1.35)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Swiss Franc", currencyCode: "CHF", countryFlag: "🇨🇭", multiplier: 0.90))
        ]
    }
    
    func flip(card: ConvertModel<CurrencyItemModel>) {
        if let index = findIndex(card: card) {
            listOfCards[index].isFront.toggle()
        }
    }
    
    func findIndex(card: ConvertModel<CurrencyItemModel>) -> Int?{
        for index in 0..<listOfCards.count {
            if card.id == listOfCards[index].id {
                return index
            }
        }
        return nil
    }
    
}
