//
// © 2023 Manicek
//

import Foundation

enum ShieldOption: CaseIterable {
    case smallShield
    case largeShield
    
    var czName: String {
        switch self {
        case .smallShield: return "Malý štít"
        case .largeShield: return "Velký štít"
        }
    }
    
    var weight: Weight {
        switch self {
        case .smallShield: return .light
        case .largeShield: return .normal
        }
    }
    
    var price: Int {
        switch self {
        case .smallShield: return 60
        case .largeShield: return 150
        }
    }
    
    var supply: Supply {
        switch self {
        case .smallShield: return .common
        case .largeShield: return .uncommon
        }
    }
    
    var rawMaterials: [RawMaterial: Double] {
        switch self {
        case .smallShield: return [.iron: 0.5, .wood: 0.5, .leather: 1]
        case .largeShield: return [.iron: 1, .wood: 1, .leather: 2]
        }
    }
    
    var requiredTalents: [Talent] {
        switch self {
        case .smallShield, .largeShield: return [.smith, .tanner]
        }
    }
    
    var requiredTools: [Tool] {
        switch self {
        case .smallShield, .largeShield: return []
        }
    }
    
    var specialRequirements: [SpecialRequirement] {
        switch self {
        case .smallShield, .largeShield: return [.forge]
        }
    }
    
    var quarterDaysToMake: Int {
        switch self {
        case .smallShield: return 1
        case .largeShield: return 4
        }
    }
    
    var bonus: Int {
        switch self {
        case .smallShield: return 1
        case .largeShield: return 2
        }
    }
    
    func toShield() -> Shield {
        Shield(
            name: czName,
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
            bonus: bonus
        )
    }
    
    static var defaultItems: [Item] {
        return allCases.map { $0.toShield() }
    }
}
