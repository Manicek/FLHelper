//
// © 2023 Manicek
//

import SwiftUI

class Item: Identifiable, Equatable {
    var name: LocalizedStringKey
    var type: ItemType
    var weight: Weight
    var price: Price
    var supply: Supply
    var craftingRequirements: CraftingRequirements
    var effect: LocalizedStringKey
    
    init(
        name: LocalizedStringKey,
        type: ItemType,
        weight: Weight,
        price: Price,
        supply: Supply,
        craftingRequirements: CraftingRequirements,
        effect: LocalizedStringKey = .empty
    ) {
        self.name = name
        self.type = type
        self.weight = weight
        self.price = price
        self.supply = supply
        self.craftingRequirements = craftingRequirements
        self.effect = effect
    }
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        lhs.name == rhs.name
        && lhs.type == rhs.type
        && lhs.weight == rhs.weight
        && lhs.price == rhs.price
        && lhs.supply == rhs.supply
        && lhs.craftingRequirements == rhs.craftingRequirements
        && lhs.effect == rhs.effect
    }
}
