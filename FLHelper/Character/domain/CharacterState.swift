//
// © 2023 Manicek
//

import SwiftUI

enum CharacterState: CaseIterable {
    case sleepy
    case thirsty
    case hungry
    case cold
    
    var name: LocalizedStringKey {
        switch self {
        case .sleepy: return .stateSleepy
        case .thirsty: return .stateThirsty
        case .hungry: return .stateHungry
        case .cold: return .stateCold
        }
    }
    
    var systemImageName: SystemImageName {
        switch self {
        case .sleepy: return .moonStars
        case .thirsty: return .cupAndSaucer
        case .hungry: return .forkKnifeCircle
        case .cold: return .snowflake
        }
    }
    
    var imageName: String {
        switch self {
        case .sleepy: return .sleepyState
        case .thirsty: return .thirstyState
        case .hungry: return .hungryState
        case .cold: return .coldState
        }
    }
}
