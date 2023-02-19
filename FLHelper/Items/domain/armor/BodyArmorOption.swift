//
// © 2023 Manicek
//

import SwiftUI

enum BodyArmorOption: CaseIterable {
    case leather
    case studdedLeather
    case chainmail
    case plate
    
    var name: LocalizedStringKey {
        switch self {
        case .leather: return .bodyArmorLeather
        case .studdedLeather: return .bodyArmorStuddedLeather
        case .chainmail: return .bodyArmorChainmail
        case .plate: return .bodyArmorPlate
        }
    }
    
    var weight: Weight {
        switch self {
        case .leather: return .light
        case .studdedLeather: return .normal
        case .chainmail, .plate: return .heavy
        }
    }
    
    var price: Int {
        switch self {
        case .leather: return 40
        case .studdedLeather: return 60
        case .chainmail: return 240
        case .plate: return 800
        }
    }
    
    var armorRating: Int {
        switch self {
        case .leather: return 2
        case .studdedLeather: return 3
        case .chainmail: return 6
        case .plate: return 8
        }
    }
    
    var description: LocalizedStringKey {
        switch self {
        case .leather, .studdedLeather:
            return .empty
        case .chainmail:
            return .bodyArmorChainmailDescription
        case .plate:
            return .bodyArmorPlateDescription
        }
    }
    
    var armorType: ArmorType {
        .body
    }
    
    var rawMaterials: [RawMaterial: Double] {
        switch self {
        case .leather: return [.leather: 2]
        case .studdedLeather: return [.iron: 0.5, .leather: 2]
        case .chainmail: return [.iron: 3]
        case .plate: return [.iron: 6]
        }
    }
    
    var requiredTalents: [Talent] {
        switch self {
        case .studdedLeather:
            return [.smith, .tanner]
        case .chainmail, .plate:
            return [.smith]
        case .leather:
            return [.tanner]
        }
    }
    
    var requiredTools: [Tool] {
        switch self {
        case .chainmail, .plate:
            return []
        case .leather, .studdedLeather:
            return [.needleAndThread]
        }
    }
    
    var specialRequirements: [SpecialRequirement] {
        switch self {
        case .studdedLeather:
            return [.forge, .knife]
        case .chainmail, .plate:
            return [.forge]
        case .leather:
            return [.knife]
        }
    }
    
    var quarterDaysToMake: Int {
        switch self {
        case .leather: return 2
        case .studdedLeather: return 4
        case .chainmail: return 14
        case .plate: return 28
        }
    }
    
    func toArmor() -> Armor {
        return Armor(
            name: name,
            weight: weight,
            price: price,
            craftingRequirements: CraftingRequirements(
                materials: rawMaterials,
                talents: requiredTalents,
                tools: requiredTools,
                special: specialRequirements,
                quarterDays: quarterDaysToMake
            ),
            armorRating: armorRating,
            armorType: armorType,
            description: description
        )
    }
    
    static var defaultItems: [Item] {
        return allCases.map { $0.toArmor() }
    }
}
