//
// © 2023 Manicek
//

import SwiftUI

enum RawMaterial {
    case iron
    case leather
    case wood
    case cloth
    case pelt
    case glass
    case tallow
    case stone
    case silver
    case meatFishOrVegetables
    case parchment
    case feather
    case herbs
    case ironOre
    case wool
    case grain
    case flour
    
    func name(count: Double) -> LocalizedStringKey {
        Self.name(count, type: self)
    }
    
    static func name(_ count: Double, type: RawMaterial) -> LocalizedStringKey {
        switch type {
        case .iron: return nameIron(count)
        case .leather: return nameLeather(count)
        case .wood: return nameWood(count)
        case .cloth: return nameCloth(count)
        case .pelt: return namePelt(count)
        case .glass: return nameGlass(count)
        case .tallow: return nameTallow(count)
        case .stone: return nameStone(count)
        case .silver: return nameSilver(count)
        case .meatFishOrVegetables: return .materialMeatFishOrVegetables
        case .feather: return .materialFeather
        case .herbs: return .materialHerbs
        case .ironOre: return .materialIronOre
        case .wool: return .materialWool
        case .grain: return .materialGrain
        case .flour: return .materialFlour
        case .parchment: return .materialParchment
        }
    }
    
    private static func nameIron(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialIronSome
        case 1: return .materialIron
        case 2...4: return .materialIronSome
        default: return .materialIronMany
        }
    }
    
    private static func nameLeather(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialLeatherSome
        case 1: return .materialLeather
        case 2...4: return .materialLeatherSome
        default: return .materialLeatherMany
        }
    }
    
    private static func nameWood(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialWoodSome
        case 1: return .materialWood
        case 2...4: return .materialWoodSome
        default: return .materialWoodMany
        }
    }
    
    private static func nameCloth(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialClothSome
        case 1: return .materialCloth
        case 2...4: return .materialClothSome
        default: return .materialClothMany
        }
    }
    
    private static func namePelt(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialPeltSome
        case 1: return .materialPelt
        case 2...4: return .materialPeltSome
        default: return .materialPeltMany
        }
    }
    
    private static func nameGlass(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialGlassSome
        case 1: return .materialGlass
        case 2...4: return .materialGlassSome
        default: return .materialGlassMany
        }
    }
    
    private static func nameTallow(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialTallowSome
        case 1: return .materialTallow
        case 2...4: return .materialTallowSome
        default: return .materialTallowMany
        }
    }
    
    private static func nameStone(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialStonePieceOf
        case 1: return .materialStone
        case 2...4: return .materialStoneSome
        default: return .materialStoneMany
        }
    }
        
    private static func nameSilver(_ count: Double) -> LocalizedStringKey {
        switch count {
        case 0..<1: return .materialSilverSome
        case 1: return .materialSilver
        case 2...4: return .materialSilverSome
        default: return .materialSilverMany
        }
    }
}
