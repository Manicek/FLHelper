//
// © 2023 Manicek
//

import Foundation

enum CharacterState: CaseIterable {
    case sleepy
    case thirsty
    case hungry
    case cold
    
    var czName: String {
        switch self {
        case .sleepy: return "Ospalost"
        case .thirsty: return "Žízeň"
        case .hungry: return "Hlad"
        case .cold: return "Podchlazení"
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
