//
// © 2023 Manicek
//

import SwiftUI

class Item: Identifiable {
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
}
