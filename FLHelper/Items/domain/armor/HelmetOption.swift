//
// © 2023 Manicek
//

import Foundation

enum HelmetOption: CaseIterable {
    case studdedLeatherCap
    case openHelmet
    case closedHelmet
    case greatHelm
    
    var czName: String {
        switch self {
        case .studdedLeatherCap: return "Pokovaná kožená čapka"
        case .openHelmet: return "Otevřená přilbice"
        case .closedHelmet: return "Uzavřená přilbice"
        case .greatHelm: return "Těžká přilbice"
        }
    }
    
    var weight: Weight {
        switch self {
        case .studdedLeatherCap, .openHelmet: return .light
        case .closedHelmet, .greatHelm: return .normal
        }
    }
    
    var price: Int {
        switch self {
        case .studdedLeatherCap: return 30
        case .openHelmet: return 80
        case .closedHelmet: return 180
        case .greatHelm: return 300
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
    
    var czDescription: String? {
        switch self {
        case .studdedLeatherCap, .openHelmet, .closedHelmet:
            return nil
        case .greatHelm:
            return "-2 Ostražitost"
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
    
    var requiredTools: [Tool] {
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
            name: czName,
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
            description: czDescription
        )
    }
    
    static var defaultItems: [Item] {
        return allCases.map { $0.toArmor() }
    }
}
