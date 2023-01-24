//
// © 2023 Manicek
//

import Foundation

enum ArmorOption {
    // MARK: - Helmets
    case studdedLeatherCap
    case open
    case closed
    case great
    // MARK: - Body armor
    case leather
    case studdedLeather
    case chainmail
    case plate
    
    var czName: String {
        switch self {
        case .studdedLeatherCap: return "Pokovaná kožená čapka"
        case .open: return "Otevřená přilbice"
        case .closed: return "Uzavřená přilbice"
        case .great: return "Těžká přilbice"
        case .leather: return "Kožená"
        case .studdedLeather: return "Pokovaná kožená"
        case .chainmail: return "Kroužková košile"
        case .plate: return "Plátová"
        }
    }
    
    var weight: Weight {
        switch self {
        case .studdedLeatherCap, .open, .leather: return .light
        case .closed, .great, .studdedLeather: return .normal
        case .chainmail, .plate: return .heavy
        }
    }
    
    var price: Int {
        switch self {
        case .studdedLeatherCap: return 30
        case .open: return 80
        case .closed: return 180
        case .great: return 300
        case .leather: return 40
        case .studdedLeather: return 60
        case .chainmail: return 240
        case .plate: return 800
        }
    }
    
    var armorRating: Int {
        switch self {
        case .studdedLeatherCap: return 1
        case .open: return 2
        case .closed: return 3
        case .great: return 4
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
        case .great: return "-2 Ostražitost"
        default: return nil
        }
    }
    
    var type: ArmorType {
        switch self {
        case .studdedLeatherCap, .open, .closed, .great: return .helmet
        case .leather, .studdedLeather, .chainmail, .plate: return .body
        }
    }
    
    func toArmor() -> Armor {
        return Armor(
            name: czName,
            weight: weight,
            price: price,
            armorRating: armorRating,
            type: type,
            description: czDescription
        )
    }
}
