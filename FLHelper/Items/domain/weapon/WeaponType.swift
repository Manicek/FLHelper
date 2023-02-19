//
// © 2023 Manicek
//

import Foundation

enum WeaponType {
    case melee
    case ranged
    
    var name: String {
        switch self {
        case .melee:
            return "nablízko"
        case .ranged:
            return "střelná"
        }
    }
    
    var itemType: ItemType {
        switch self {
        case .melee:
            return .meleeWeapon
        case .ranged:
            return .rangedWeapon
        }
    }
}
