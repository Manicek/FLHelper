//
// © 2023 Manicek
//

import SwiftUI

enum Consumable: CaseIterable {
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
