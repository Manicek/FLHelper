//
// © 2023 Manicek
//

import Foundation

enum WeaponFeature {
    case blunt
    case pointed
    case edged
    case parrying
    case light
    case heavy
    case hook
    case loadingIsSlowAction
    
    var czName: String {
        switch self {
        case .blunt:
            return "tupá"
        case .pointed:
            return "bodná"
        case .edged:
            return "sečná"
        case .parrying:
            return "odrážecí"
        case .light:
            return "lehká"
        case .heavy:
            return "těžká"
        case .hook:
            return "zahnutá"
        case .loadingIsSlowAction:
            return "nabíjení je dlouhá akce"
        }
    }
}
