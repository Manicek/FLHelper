//
// © 2023 Manicek
//

import SwiftUI

enum RollingCategory {
    case travelling
    case combat
    
    var name: LocalizedStringKey {
        switch self {
        case .travelling:
            return .rollingCategoryTravelling
        case .combat:
            return .rollingCategoryCombat
        }
    }
}
