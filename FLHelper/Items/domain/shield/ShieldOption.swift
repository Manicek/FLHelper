//
// © 2023 Manicek
//

import SwiftUI

enum ShieldOption: CaseIterable {
    case smallShield
    case largeShield
    
    var name: LocalizedStringKey {
        switch self {
        case .smallShield: return .shieldSmall
        case .largeShield: return .shieldLarge
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
        case .largeShield: return 2
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
            name: name,
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
