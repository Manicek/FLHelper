//
// © 2023 Manicek
//

import SwiftUI

// MARK: - ArmorType

enum ArmorType {
    case helmet
    case body
    
    var systemImageName: SystemImageName {
        switch self {
        case .helmet: return .seal
        case .body: return .tshirt
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

struct Armor: Item {
    var name: LocalizedStringKey
    var type: ItemType
    var weight: Weight
    var price: Price
    var supply: Supply
    var craftingRequirements: CraftingRequirements
    var effect: LocalizedStringKey
    var armorRating: Int
    var armorType: ArmorType
}
