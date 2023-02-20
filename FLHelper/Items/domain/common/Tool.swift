//
// © 2023 Manicek
//

import SwiftUI

enum Tool: CaseIterable {
    case saw
    case hammer
    case sledgeHammer
    case pickaxe
    case shovel
    case timberAxe
    case pliers
    case needleAndThread
    
    var name: LocalizedStringKey {
        switch self {
        case .saw: return .toolSaw
        case .hammer: return .toolHammer
        case .sledgeHammer: return .toolSledgeHammer
        case .pickaxe: return .toolPickaxe
        case .shovel: return .toolShovel
        case .timberAxe: return .toolTimberAxe
        case .pliers: return .toolPliers
        case .needleAndThread: return .toolNeedleAndThread
        }
    }
    
    var weight: Weight {
        switch self {
        case .saw, .hammer, .pickaxe, .shovel, .timberAxe:
            return .normal
        case .sledgeHammer:
            return .heavy
        case .pliers:
            return .light
        case .needleAndThread:
            return .tiny
        }
    }
    
    var price: Price {
        switch self {
        case .saw: return 50
        case .hammer: return 10
        case .sledgeHammer: return 20
        case .pickaxe: return 15
        case .shovel: return 20
        case .timberAxe: return 20
        case .pliers: return 20
        case .needleAndThread: return 3
        }
    }
    
    var supply: Supply {
        switch self {
        case .saw, .pliers:
            return .uncommon
        case .hammer, .sledgeHammer, .pickaxe, .shovel, .timberAxe, .needleAndThread:
            return .common
        }
    }
    
    var rawMaterials: [RawMaterial: Double] {
        switch self {
        case .saw: return [.iron: 1, .wood: 1]
        case .hammer: return [.iron: 0.5, .wood: 1]
        case .sledgeHammer: return [.iron: 1, .wood: 2]
        case .pickaxe: return [.iron: 1, .wood: 1]
        case .shovel: return [.iron: 1, .wood: 1]
        case .timberAxe: return [.iron: 0.5, .wood: 1]
        case .pliers: return [.iron: 1]
        case .needleAndThread: return [.iron: 0.1, .cloth: 0.1]
        }
    }
    
    var requiredTalents: [Talent] {
        switch self {
        case .saw, .hammer, .sledgeHammer, .pickaxe, .shovel, .timberAxe, .pliers:
            return [.smith]
        case .needleAndThread:
            return [.smith, .tailor]
        }
    }
    
    var requiredTools: [Tool] {
        switch self {
        case .saw, .hammer, .pickaxe, .shovel, .timberAxe, .pliers, .needleAndThread:
            return []
        case .sledgeHammer:
            return [.hammer]
        }
    }
    
    var specialRequirements: [SpecialRequirement] {
        switch self {
        case .saw, .pickaxe, .shovel, .timberAxe, .pliers, .needleAndThread:
            return [.forge]
        case .hammer:
            return [.forge, .stone]
        case .sledgeHammer:
            return [.fire]
        }
    }
    
    
    var quarterDaysToMake: Int {
        switch self {
        case .saw, .shovel, .timberAxe, .pliers:
            return 2
        case .hammer, .sledgeHammer, .pickaxe, .needleAndThread:
            return 1
        }
    }
    
    func toItem() -> Item {
        Item(
            name: name,
            type: .tool,
            weight: weight,
            price: price,
            supply: supply,
            craftingRequirements: CraftingRequirements(
                materials: rawMaterials,
                talents: requiredTalents,
                tools: requiredTools,
                special: specialRequirements,
                quarterDays: quarterDaysToMake
            )
        )
    }
    
    static var defaultItems: [Item] {
        allCases.map { $0.toItem() }
    }
}
