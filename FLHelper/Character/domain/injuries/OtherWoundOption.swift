//
// © 2023 Manicek
//

import SwiftUI

enum OtherWoundOption {
    case nonTypicalDamage
    case pushedDamage
    
    var name: LocalizedStringKey {
        switch self {
        case .nonTypicalDamage: return .criticalInjuriesNonTypicalDamage
        case .pushedDamage: return .criticalInjuriesPushedDamage
        }
    }
    
    var isDeadly: Bool {
        switch self {
        case .nonTypicalDamage:
            return true
        case .pushedDamage:
            return false
        }
    }
    
    var timeLimitDie: Die? {
        switch self {
        case .nonTypicalDamage:
            return .d6
        case .pushedDamage:
            return nil
        }
    }
    
    var effect: LocalizedStringKey {
        switch self {
        case .nonTypicalDamage: return .criticalInjuriesNonTypicalDamageEffect
        case .pushedDamage: return .criticalInjuriesPushedDamageEffect
        }
    }
    
    func toCriticalInjury() -> CriticalInjury {
        CriticalInjury(
            name: name,
            type: .other,
            isDeadly: isDeadly,
            remainingHealingTime: HealingTime(isPermanent: false, days: nil),
            healingTimeDie: nil,
            remainingTimeLimit: nil,
            timeLimitDie: timeLimitDie,
            effect: effect
        )
    }
}
