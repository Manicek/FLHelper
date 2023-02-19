//
// © 2023 Manicek
//

import SwiftUI

class Weapon: Item {
    let range: Range
    let grip: WeaponGrip
    let features: [WeaponFeature]
    var bonus: Int
    var damage: Int
    
    init(
        name: LocalizedStringKey,
        type: ItemType,
        weight: Weight,
        price: Int,
        supply: Supply?,
        craftingRequirements: CraftingRequirements?,
        range: Range,
        grip: WeaponGrip,
        features: [WeaponFeature],
        bonus: Int,
        damage: Int
    ) {
        self.range = range
        self.grip = grip
        self.features = features
        self.bonus = bonus
        self.damage = damage
        super.init(
            name: name,
            type: type,
            weight: weight,
            price: price,
            supply: supply,
            craftingRequirements: craftingRequirements
        )
    }
}

