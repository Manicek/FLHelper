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
    
    var systemImageName: String {
        switch self {
        case .sleepy: return "moon.stars"
        case .thirsty: return "cup.and.saucer"
        case .hungry: return "fork.knife.circle"
        case .cold: return "snowflake"
        }
    }
    
    var imageName: String {
        switch self {
        case .sleepy: return "SleepyState"
        case .thirsty: return "ThirstyState"
        case .hungry: return "HungryState"
        case .cold: return "ColdState"
        }
    }
}
