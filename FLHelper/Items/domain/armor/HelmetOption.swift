//
// © 2023 Manicek
//

import SwiftUI

enum HelmetOption: CaseIterable {
    case studdedLeatherCap
    case openHelmet
    case closedHelmet
    case greatHelm
    
    var name: LocalizedStringKey {
        switch self {
        case .studdedLeatherCap: return .helmetStuddedLeatherCap
        case .openHelmet: return .helmetOpenHelmet
        case .closedHelmet: return .helmetClosedHelmet
        case .greatHelm: return .helmetGreatHelm
        }
    }
    
    var weight: Weight {
        switch self {
        case .studdedLeatherCap, .openHelmet: return .light
        case .closedHelmet, .greatHelm: return .normal
        }
    }
    
    var price: Price {
        switch self {
        case .studdedLeatherCap: return 30
        case .openHelmet: return 80
        case .closedHelmet: return 180
        case .greatHelm: return 300
        }
    }
    
    var supply: Supply {
        switch self {
        case .studdedLeatherCap: return .uncommon
        case .openHelmet: return .uncommon
        case .closedHelmet: return .uncommon
        case .greatHelm: return .rare
        }
    }
    
    var armorRating: Int {
        switch self {
        case .studdedLeatherCap: return 1
        case .openHelmet: return 2
        case .closedHelmet: return 3
        case .greatHelm: return 4
        }
    }
    
    var effect: LocalizedStringKey {
        switch self {
        case .studdedLeatherCap, .openHelmet, .closedHelmet:
            return .empty
        case .greatHelm:
            return .helmetGreatHelmDescription
        }
    }
    
    var armorType: ArmorType {
        .helmet
    }
    
    var rawMaterials: [RawMaterial: Double] {
        switch self {
        case .studdedLeatherCap: return [.iron: 0.5, .leather: 1]
        case .openHelmet: return [.iron: 1, .leather: 1]
        case .closedHelmet: return [.iron: 2]
        case .greatHelm: return [.iron: 3]
        }
    }
    
    var requiredTalents: [Talent] {
        switch self {
        case .studdedLeatherCap, .openHelmet:
            return [.smith, .tanner]
        case .closedHelmet, .greatHelm:
            return [.smith]
        }
    }
    
    var requiredTools: [ToolOption] {
        switch self {
        case .closedHelmet, .greatHelm:
            return []
        case .studdedLeatherCap, .openHelmet:
            return [.needleAndThread]
        }
    }
    
    var specialRequirements: [SpecialRequirement] {
        switch self {
        case .studdedLeatherCap, .openHelmet:
            return [.forge, .knife]
        case .closedHelmet, .greatHelm:
            return [.forge]
        }
    }
    
    var quarterDaysToMake: Int {
        switch self {
        case .studdedLeatherCap:
            return 2
        case .openHelmet, .closedHelmet:
            return 4
        case .greatHelm:
            return 14
        }
    }
    
    func toArmor() -> Armor {
        return Armor(
            name: name,
            type: .helmet,
            weight: weight,
            price: price,
            supply: supply,
            craftingRequirements: CraftingRequirements(
                materials: rawMaterials,
                talents: requiredTalents,
                tools: requiredTools,
                special: specialRequirements,
                quarterDays: quarterDaysToMake
            ),
            effect: effect,
            armorRating: armorRating,
            armorType: armorType
        )
    }
    
    static var defaultItems: [Item] {
        return allCases.map { $0.toArmor() }
    }
}
