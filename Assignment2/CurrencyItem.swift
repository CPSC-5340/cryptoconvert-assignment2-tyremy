//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by Tyler Remy on 3/21/24.
//

import SwiftUI

struct CurrencyItem: View {
    
    var card : ConvertModel<CurrencyItemModel>
    
    var body: some View {
            if card.isFront {
                FrontCurrencyItem(card: card.cardContent)
            } else {
                BackCurrencyItem(card: card.cardContent)
            }
    }
}

#Preview {
    CurrencyItem(card: ConvertModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", countryFlag: "🇺🇸", multiplier: 1)))
}

struct FrontCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.countryFlag)
                    .font(.system(size: 55))
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
                    .font(.system(size: 36))
                    .foregroundColor(.white)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(Color(hex: 0x720000))
        
    }
}

struct BackCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
                    .font(.system(size: 28))
                    .foregroundColor(.white)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(Color(hex: 0x720000))
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

