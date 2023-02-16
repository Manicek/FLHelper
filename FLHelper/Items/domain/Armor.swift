//
// © 2023 Manicek
//

import Foundation

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
    
    var czName: String {
        switch self {
        case .helmet: return "Přilbice"
        case .body: return "Zbroj"
        }
    }
}

// MARK: - Armor

class Armor: Item {
    var armorRating: Int
    var armorType: ArmorType
    var description: String?
    
    init(
        name: String,
        weight: Weight,
        price: Int,
        supply: Supply? = nil,
        craftingRequirements: CraftingRequirements? = nil,
        armorRating: Int,
        armorType: ArmorType,
        description: String?
    ) {
        self.armorRating = armorRating
        self.armorType = armorType
        self.description = description
        super.init(
            name: name,
            type: .armor,
            weight: weight,
            price: price,
            supply: supply,
            craftingRequirements: craftingRequirements
        )
    }
}
