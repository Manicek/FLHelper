//
// © 2023 Manicek
//

import SwiftUI

enum Consumable {
    case food
    case water
    case arrows
    case torches
    
    var name: LocalizedStringKey {
        switch self {
        case .food: return .consumableFood
        case .water: return .consumableWater
        case .arrows: return .consumableArrows
        case .torches: return .consumableTorches
        }
    }
}
