//
// © 2023 Manicek
//

import SwiftUI

struct CriticalInjury: Identifiable {
    let id = UUID()
    let name: LocalizedStringKey
    let type: CriticalInjuryType
    let isDeadly: Bool
    var remainingHealingTime: HealingTime
    let healingTimeDie: Die?
    var remainingTimeLimit: Int?
    let timeLimitDie: Die?
    let effect: LocalizedStringKey
    
    var hasHealingEffect: Bool {
        effect != .criticalInjuriesNoEffect
    }
}
