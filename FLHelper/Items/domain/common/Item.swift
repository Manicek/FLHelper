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
    
    init(
        name: LocalizedStringKey,
        type: ItemType,
        weight: Weight,
        price: Price,
        supply: Supply,
        craftingRequirements: CraftingRequirements
    ) {
        self.name = name
        self.type = type
        self.weight = weight
        self.price = price
        self.supply = supply
        self.craftingRequirements = craftingRequirements
    }
}
