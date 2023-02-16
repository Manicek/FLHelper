//
// © 2023 Manicek
//

import Foundation

class Shield: Item {
    static let systemImageName = "shield"
    static let czName = "Štít"
    
    var bonus: Int
    
    init(
        name: String,
        weight: Weight,
        price: Int,
        supply: Supply? = nil,
        craftingRequirements: CraftingRequirements? = nil,
        bonus: Int
    ) {
        self.bonus = bonus
        super.init(
            name: name,
            type: .shield,
            weight: weight,
            price: price,
            supply: supply,
            craftingRequirements: craftingRequirements
        )
    }
}
