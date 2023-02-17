//
// © 2023 Manicek
//

import Foundation

enum WeaponGrip {
    case oneHanded
    case twoHanded
    
    var czName: String {
        switch self {
        case .oneHanded: return "jednoruční"
        case .twoHanded: return "obouruční"
        }
    }
}
