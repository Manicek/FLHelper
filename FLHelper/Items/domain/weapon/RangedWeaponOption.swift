//
// © 2023 Manicek
//

import Foundation

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
    
    var czName: String {
        switch self {
        case .rock: return "Kámen"
        case .throwingKnife: return "Vrhací nůž"
        case .throwingAxe: return "Vrhací sekera"
        case .throwingSpear: return "Oštěp"
        case .sling: return "Prak"
        case .shortBow: return "Krátký luk"
        case .longbow: return "Dlouhý luk"
        case .lightCrossbow: return "Lehká kuše"
        case .heavyCrossbow: return "Těžká kuše"
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
    
    var price: Int {
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
    
    var weaponType: WeaponType {
        .ranged
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
            weaponType: weaponType,
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
