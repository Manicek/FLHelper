//
// © 2023 Manicek
//

import SwiftUI

enum WeaponFeature {
    case blunt
    case pointed
    case edged
    case parrying
    case light
    case heavy
    case hook
    case loadingIsSlowAction
    
    var name: LocalizedStringKey {
        switch self {
        case .blunt: return .weaponFeatureBlunt
        case .pointed: return .weaponFeaturePointed
        case .edged: return .weaponFeatureEdged
        case .parrying: return .weaponFeatureParrying
        case .light: return .weaponFeatureLight
        case .heavy: return .weaponFeatureHeavy
        case .hook: return .weaponFeatureHook
        case .loadingIsSlowAction: return .weaponFeatureLoadingIsSlowAction
        }
    }
}
