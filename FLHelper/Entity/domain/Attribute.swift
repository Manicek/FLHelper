//
// © 2023 Manicek
//

import SwiftUI

enum Attribute: CaseIterable {
    enum Constants {
        static let creationMinimum = 0
        static let creationMaximum = 4
    }
    
    case strength
    case agility
    case wits
    case empathy
    
    var name: LocalizedStringKey {
        switch self {
        case .strength: return .attributesStrength
        case .agility: return .attributesAgility
        case .wits: return .attributesWits
        case .empathy: return .attributesEmpathy
        }
    }
}
