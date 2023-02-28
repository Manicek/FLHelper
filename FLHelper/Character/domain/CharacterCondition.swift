//
// © 2023 Manicek
//

import SwiftUI

enum CharacterCondition: CaseIterable {
    case sleepy
    case thirsty
    case hungry
    case cold
    
    var name: LocalizedStringKey {
        switch self {
        case .sleepy: return .conditionsSleepy
        case .thirsty: return .conditionsThirsty
        case .hungry: return .conditionsHungry
        case .cold: return .conditionsCold
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
    
    // TODO, using system image for now
    var imageName: String {
        switch self {
        case .sleepy: return .sleepyCondition
        case .thirsty: return .thirstyCondition
        case .hungry: return .hungryCondition
        case .cold: return .coldCondition
        }
    }
}
