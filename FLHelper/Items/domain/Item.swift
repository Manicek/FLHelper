//
// © 2023 Manicek
//

import Foundation

class Item: Identifiable {
    var name: String
    var type: ItemType
    var weight: Weight
    var price: Int
    var supply: Supply?
    var craftingRequirements: CraftingRequirements?
    
    init(
        name: String,
        type: ItemType,
        weight: Weight,
        price: Int,
        supply: Supply? = nil,
        craftingRequirements: CraftingRequirements? = nil
    ) {
        self.name = name
        self.type = type
        self.weight = weight
        self.price = price
        self.supply = supply
        self.craftingRequirements = craftingRequirements
    }
}
