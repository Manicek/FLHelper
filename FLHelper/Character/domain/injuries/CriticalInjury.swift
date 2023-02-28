//
// © 2023 Manicek
//

import SwiftUI

class CriticalInjury: Identifiable {
    let name: LocalizedStringKey
    let type: CriticalInjuryType
    let isDeadly: Bool
    var remainingHealingTime: HealingTime
    let healingTimeDie: Die?
    var remainingTimeLimit: Int?
    let timeLimitDie: Die?
    let effect: LocalizedStringKey
    
    init(
        name: LocalizedStringKey,
        type: CriticalInjuryType,
        isDeadly: Bool,
        remainingHealingTime: HealingTime,
        healingTimeDie: Die?,
        remainingTimeLimit: Int?,
        timeLimitDie: Die?,
        effect: LocalizedStringKey
    ) {
        self.name = name
        self.type = type
        self.isDeadly = isDeadly
        self.remainingHealingTime = remainingHealingTime
        self.healingTimeDie = healingTimeDie
        self.remainingTimeLimit = remainingTimeLimit
        self.timeLimitDie = timeLimitDie
        self.effect = effect
    }
}
