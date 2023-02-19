//
// © 2023 Manicek
//

import SwiftUI

enum WeaponGrip {
    case oneHanded
    case twoHanded
    
    var name: LocalizedStringKey {
        switch self {
        case .oneHanded: return .weaponGripOneHanded
        case .twoHanded: return .weaponGripTwoHanded
        }
    }
}
