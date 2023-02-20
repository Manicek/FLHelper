//
// © 2023 Manicek
//

import SwiftUI

enum RangedWeaponOption: CaseIterable {
    case rock
    case throwingKnife
    case throwingAxe
    case throwingSpear
    case sling
    case shortBow
    case longbow
    case lightCrossbow
    case heavyCrossbow
    
    var name: LocalizedStringKey {
        switch self {
        case .rock: return .rangedWeaponRock
        case .throwingKnife: return .rangedWeaponThrowingKnife
        case .throwingAxe: return .rangedWeaponThrowingAxe
        case .throwingSpear: return .rangedWeaponThrowingSpear
        case .sling: return .rangedWeaponSling
        case .shortBow: return .rangedWeaponShortBow
        case .longbow: return .rangedWeaponLongbow
        case .lightCrossbow: return .rangedWeaponLightCrossbow
        case .heavyCrossbow: return .rangedWeaponHeavyCrossbow
        }
    }
    
    var weight: Weight {
        switch self {
        case .rock, .throwingKnife, .sling, .shortBow:
            return .light
        case .throwingAxe, .throwingSpear, .longbow, .lightCrossbow:
            return .normal
        case .heavyCrossbow:
            return .heavy
        }
    }
    
    var price: Price {
        switch self {
        case .rock: return 0
        case .throwingKnife, .sling: return 10
        case .throwingAxe, .throwingSpear: return 20
        case .shortBow: return 60
        case .longbow: return 120
        case .lightCrossbow: return 240
        case .heavyCrossbow: return 400
        }
    }
    
    var supply: Supply {
        switch self {
        case .rock, .throwingKnife, .throwingAxe, .throwingSpear, .sling, .shortBow:
            return .common
        case .longbow, .lightCrossbow:
            return .uncommon
        case .heavyCrossbow:
            return .rare
        }
    }
    
    var rawMaterials: [RawMaterial: Double] {
        switch self {
        case .rock: return [:]
        case .throwingKnife: return [.iron: 0.5, .wood: 0.5]
        case .throwingAxe, .throwingSpear: return [.iron: 0.5, .wood: 1]
        case .sling: return [.leather: 0.5]
        case .shortBow: return [.wood: 1, .leather: 0.25]
        case .longbow: return [.wood: 2, .leather: 0.25]
        case .lightCrossbow: return [.iron: 0.5, .wood: 1, .leather: 1]
        case .heavyCrossbow: return [.iron: 1, .wood: 2, .leather: 1]
        }
    }
    
    var requiredTalents: [Talent] {
        switch self {
        case .rock:
            return []
        case .throwingKnife, .throwingAxe, .throwingSpear:
            return [.smith]
        case .sling, .shortBow, .longbow:
            return [.bowyer]
        case .lightCrossbow, .heavyCrossbow:
            return [.smith, .bowyer]
        }
    }
    
    var requiredTools: [Tool] {
        []
    }
    
    var specialRequirements: [SpecialRequirement] {
        switch self {
        case .rock:
            return [.stone]
        case .throwingKnife, .throwingAxe, .throwingSpear, .lightCrossbow, .heavyCrossbow:
            return [.forge]
        case .sling, .shortBow, .longbow:
            return [.knife]
        }
    }
    
    var quarterDaysToMake: Int {
        switch self {
        case .rock: return 0
        case .throwingKnife, .throwingAxe, .throwingSpear, .sling: return 1
        case .shortBow: return 2
        case .longbow: return 4
        case .lightCrossbow: return 14
        case .heavyCrossbow: return 28
        }
    }
    
    var range: Range {
        switch self {
        case .rock, .throwingKnife, .throwingAxe:
            return .near
        case .throwingSpear, .sling, .shortBow:
            return .short
        case .longbow, .lightCrossbow, .heavyCrossbow:
            return .long
        }
    }
    
    var grip: WeaponGrip {
        switch self {
        case .rock, .throwingKnife, .throwingAxe, .throwingSpear, .sling:
            return .oneHanded
        case .shortBow, .longbow, .lightCrossbow, .heavyCrossbow:
            return .twoHanded
        }
    }
    
    var features: [WeaponFeature] {
        switch self {
        case .rock, .throwingKnife, .sling, .shortBow:
            return [.light]
        case .throwingAxe, .throwingSpear, .longbow:
            return []
        case .lightCrossbow:
            return [.loadingIsSlowAction]
        case .heavyCrossbow:
            return [.loadingIsSlowAction, .heavy]
        }
    }
    
    var bonus: Int {
        switch self {
        case .rock:
            return 0
        case .throwingKnife, .throwingAxe, .sling, .lightCrossbow, .heavyCrossbow:
            return 1
        case .throwingSpear, .shortBow, .longbow:
            return 2
        }
    }
    
    var damage: Int {
        switch self {
        case .rock, .throwingKnife, .throwingSpear, .sling, .shortBow, .longbow:
            return 1
        case .throwingAxe, .lightCrossbow:
            return 2
        case .heavyCrossbow:
            return 3
        }
    }
    
    func toWeapon() -> Weapon {
        Weapon(
            name: name,
            type: .rangedWeapon,
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
            range: range,
            grip: grip,
            features: features,
            bonus: bonus,
            damage: damage
        )
    }
    
    static var defaultItems: [Item] {
        allCases.map { $0.toWeapon() }
    }
}
