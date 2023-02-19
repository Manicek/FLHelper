//
// © 2023 Manicek
//

import Foundation

class GetDefaultItemsInteractor {
    
    func callAsFunction(type: ItemType) -> [Item] {
        switch type {
        case .meleeWeapon:
            return MeleeWeaponOption.defaultItems
        case .rangedWeapon:
            return RangedWeaponOption.defaultItems
        case .bodyArmor:
            return BodyArmorOption.defaultItems
        case .helmet:
            return HelmetOption.defaultItems
        case .shield:
            return ShieldOption.defaultItems
        case .tool:
            return Tool.defaultItems
        case .goods:
            return []
        case .miscellaneous:
            return []
        }
    }
}
