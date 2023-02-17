//
// © 2023 Manicek
//

import Foundation

enum ArmorOption: CaseIterable {
    // MARK: - Helmets
    case studdedLeatherCap
    case openHelmet
    case closedHelmet
    case greatHelm
    // MARK: - Body armor
    case leather
    case studdedLeather
    case chainmail
    case plate
    
    var czName: String {
        switch self {
        case .studdedLeatherCap: return "Pokovaná kožená čapka"
        case .openHelmet: return "Otevřená přilbice"
        case .closedHelmet: return "Uzavřená přilbice"
        case .greatHelm: return "Těžká přilbice"
        case .leather: return "Kožená"
        case .studdedLeather: return "Pokovaná kožená"
        case .chainmail: return "Kroužková košile"
        case .plate: return "Plátová"
        }
    }
    
    var weight: Weight {
        switch self {
        case .studdedLeatherCap, .openHelmet, .leather: return .light
        case .closedHelmet, .greatHelm, .studdedLeather: return .normal
        case .chainmail, .plate: return .heavy
        }
    }
    
    var price: Int {
        switch self {
        case .studdedLeatherCap: return 30
        case .openHelmet: return 80
        case .closedHelmet: return 180
        case .greatHelm: return 300
        case .leather: return 40
        case .studdedLeather: return 60
        case .chainmail: return 240
        case .plate: return 800
        }
    }
    
    var armorRating: Int {
        switch self {
        case .studdedLeatherCap: return 1
        case .openHelmet: return 2
        case .closedHelmet: return 3
        case .greatHelm: return 4
        case .leather: return 2
        case .studdedLeather: return 3
        case .chainmail: return 6
        case .plate: return 8
        }
    }
    
    var czDescription: String? {
        switch self {
        case .chainmail: return "Poloviční třída zbroje proti šípům a bodnutí"
        case .plate: return "-2 Mrštnost"
        case .greatHelm: return "-2 Ostražitost"
        default: return nil
        }
    }
    
    var armorType: ArmorType {
        switch self {
        case .studdedLeatherCap, .openHelmet, .closedHelmet, .greatHelm: return .helmet
        case .leather, .studdedLeather, .chainmail, .plate: return .body
        }
    }
    
    var rawMaterials: [RawMaterial: Double] {
        switch self {
        case .studdedLeatherCap: return [.iron: 0.5, .leather: 1]
        case .openHelmet: return [.iron: 1, .leather: 1]
        case .closedHelmet: return [.iron: 2]
        case .greatHelm: return [.iron: 3]
        case .leather: return [.leather: 2]
        case .studdedLeather: return [.iron: 0.5, .leather: 2]
        case .chainmail: return [.iron: 3]
        case .plate: return [.iron: 6]
        }
    }
    
    var requiredTalents: [Talent] {
        switch self {
        case .studdedLeatherCap, .openHelmet, .studdedLeather:
            return [.smith, .tanner]
        case .closedHelmet, .greatHelm, .chainmail, .plate:
            return [.smith]
        case .leather:
            return [.tanner]
        }
    }
    
    var requiredTools: [Tool] {
        switch self {
        case .closedHelmet, .greatHelm, .chainmail, .plate:
            return []
        case .studdedLeatherCap, .openHelmet, .leather, .studdedLeather:
            return [.needleAndThread]
        }
    }
    
    var specialRequirements: [SpecialRequirement] {
        switch self {
        case .studdedLeatherCap, .openHelmet, .studdedLeather:
            return [.forge, .knife]
        case .closedHelmet, .greatHelm, .chainmail, .plate:
            return [.forge]
        case .leather:
            return [.knife]
        }
    }
    
    var quarterDaysToMake: Int {
        switch self {
        case .studdedLeatherCap, .leather:
            return 2
        case .openHelmet, .closedHelmet, .studdedLeather:
            return 4
        case .greatHelm, .chainmail:
            return 14
        case .plate:
            return 28
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
