//
// © 2023 Manicek
//

import Foundation

class GetBasicItemsInteractor {
    
    func callAsFunction(type: ItemType) -> [Item] {
        switch type {
        case .weapon:
            return WeaponOption.defaultItems
        case .armor:
            return ArmorOption.defaultItems
        case .shield:
            return ShieldOption.defaultItems
        case .tool:
            return Tool.defaultItems
        case .miscellaneous:
            return []
        }
    }
}
