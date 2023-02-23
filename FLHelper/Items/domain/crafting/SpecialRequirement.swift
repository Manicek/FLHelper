//
// © 2023 Manicek
//

import SwiftUI

enum SpecialRequirement {
    case fire
    case forge
    case stone
    case knife
    case inkAndQuill
    case cauldron
    
    var name: LocalizedStringKey {
        switch self {
        case .fire: return .specialRequirementFire
        case .forge: return .specialRequirementForge
        case .stone: return .specialRequirementStone
        case .knife: return .specialRequirementKnife
        case .inkAndQuill: return .specialRequirementInkAndQuill
        case .cauldron: return .specialRequirementCauldron
        }
    }
}
