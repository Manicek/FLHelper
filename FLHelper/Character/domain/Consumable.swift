//
// © 2023 Manicek
//

import Foundation

enum Consumable {
    case food
    case water
    case arrows
    case torches
    
    var czName: String {
        switch self {
        case .food: return "Jídlo"
        case .water: return "Voda"
        case .arrows: return "Šípy"
        case .torches: return "Pochodně"
        }
    }
}
