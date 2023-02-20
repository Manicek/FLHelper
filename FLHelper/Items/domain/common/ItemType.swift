//
// © 2023 Manicek
//

import SwiftUI

enum ItemType {
    case meleeWeapon
    case rangedWeapon
    case bodyArmor
    case helmet
    case shield
    case tool
    case goods
    case miscellaneous
    
    var name: LocalizedStringKey {
        switch self {
        case .meleeWeapon: return .itemsMeleeWeapon
        case .rangedWeapon: return .itemsRangedWeapon
        case .bodyArmor: return .itemsBodyArmor
        case .helmet: return .itemsHelmet
        case .shield: return .itemsShield
        case .tool: return .itemsTool
        case .goods: return .itemsGoods
        case .miscellaneous: return .itemsMiscellaneous
        }
    }
    
    var tableName: LocalizedStringKey {
        switch self {
        case .meleeWeapon: return .itemsMeleeWeaponPlural
        case .rangedWeapon: return .itemsRangedWeaponPlural
        case .bodyArmor: return .itemsBodyArmorPlural
        case .helmet: return .itemsHelmetPlural
        case .shield: return .itemsShieldPlural
        case .tool: return .itemsToolPlural
        case .goods: return .itemsGoodsPlural
        case .miscellaneous: return .itemsMiscellaneousPlural
        }
    }
}
