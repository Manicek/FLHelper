//
// © 2023 Manicek
//

import SwiftUI

enum Range {
    case arm
    case near
    case short
    case long
    case distant
    
    var name: LocalizedStringKey {
        switch self {
        case .arm: return .rangeArm
        case .near: return .rangeNear
        case .short: return .rangeShort
        case .long: return .rangeLong
        case .distant: return .rangeDistant
        }
    }
}
