//
// © 2023 Manicek
//

import SwiftUI

enum Weight {
    case tiny
    case light
    case normal
    case heavy
    case superHeavy(_ weight: Int)
    
    var name: LocalizedStringKey {
        switch self {
        case .tiny: return .weightTiny
        case .light: return .weightLight
        case .normal: return .weightNormal
        case .heavy: return .weightHeavy
        case .superHeavy(let weight): return "\(weight)"
        }
    }
}
