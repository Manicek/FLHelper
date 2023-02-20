//
// © 2023 Manicek
//

import SwiftUI

// MARK: - ArmorType

enum ArmorType {
    case helmet
    case body
    
    var systemImageName: String {
        switch self {
        case .helmet: return "seal"
        case .body: return "tshirt"
        }
    }
    
    var name: LocalizedStringKey {
        switch self {
        case .helmet: return .itemsHelmet
        case .body: return .itemsBodyArmor
        }
    }
    
    var itemType: ItemType {
        switch self {
        case .helmet: return .helmet
        case .body: return .bodyArmor
        }
    }
}

// MARK: - Armor

class Armor: Item {
    var armorRating: Int
    var armorType: ArmorType
    var description: LocalizedStringKey
    
    init(
        name: LocalizedStringKey,
        weight: Weight,
        price: Price,
        supply: Supply,
        craftingRequirements: CraftingRequirements,
        armorRating: Int,
        armorType: ArmorType,
        description: LocalizedStringKey
    ) {
        self.armorRating = armorRating
        self.armorType = armorType
        self.description = description
        super.init(
            name: name,
            type: armorType.itemType,
            weight: weight,
            price: price,
            supply: supply,
            craftingRequirements: craftingRequirements
        )
    }
}
