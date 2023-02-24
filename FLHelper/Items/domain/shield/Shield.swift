//
// © 2023 Manicek
//

import SwiftUI

class Shield: Item {
    static let systemImageName: SystemImageName = .shield
    static let name: LocalizedStringKey = .itemsShield
    
    var bonus: Int
    
    init(
        name: LocalizedStringKey,
        weight: Weight,
        price: Price,
        supply: Supply,
        craftingRequirements: CraftingRequirements,
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
