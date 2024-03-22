//
//  ConversionSelection.swift
//  Assignment2
//
//  Created by Tyler Remy on 3/22/24.
//

import SwiftUI

let navigationItems = [NavigationItem(name: "World Currency Exchange", menu: .currency), NavigationItem(name: "Crypto Exchange", menu: .crypto)]

struct ConversionSelection: View {
    var body: some View {
        NavigationStack {
            List(navigationItems, id: \.self) { item in
                NavigationLink(item.name, value: item)
            }
            .listStyle(GroupedListStyle())
            .navigationDestination(for: NavigationItem.self, destination: { item in
                switch item.menu {
                case .currency:
                    Converter()
                case .crypto:
                    Crypto()
                }
            })
            .navigationTitle("Conversion App")
        }
    }
}

#Preview {
    ConversionSelection()
}

struct NavigationItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var menu: Menu
}

enum Menu: String {
    case currency
    case crypto
}
