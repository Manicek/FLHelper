//
// © 2023 Manicek
//

import Foundation

enum Attribute {
    enum Constants {
        static let creationMinimum = 0
        static let creationMaximum = 4
    }
    
    case strength
    case agility
    case wits
    case empathy
    
    var czName: String {
        switch self {
        case .strength: return "Síla"
        case .agility: return "Obratnost"
        case .wits: return "Bystrost"
        case .empathy: return "Osobnost"
        }
    }
}
