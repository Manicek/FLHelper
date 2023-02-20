//
// © 2023 Manicek
//

import SwiftUI

enum Supply {
    case common
    case uncommon
    case rare
    
    var name: LocalizedStringKey {
        switch self {
        case .common: return .supplyCommon
        case .uncommon: return .supplyUncommon
        case .rare: return .supplyRare
        }
    }
}
