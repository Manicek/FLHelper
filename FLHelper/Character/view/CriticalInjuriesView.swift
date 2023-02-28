//
// © 2023 Manicek
//

import SwiftUI

struct CriticalInjuriesView: View {
    let injuries: [CriticalInjury]
    
    var body: some View {
        VStack {
            TextLeading(.criticalInjuries)
            ForEach(injuries) { injury in
                HStack(spacing: 0) {
                    Text(injury.name)
                    Text(", ")
                    Text(injury.effect)
                    Text(", ")
                    if injury.remainingHealingTime.isPermanent {
                        Text(.criticalInjuriesPermanent)
                    } else {
                        Text("\(injury.remainingHealingTime.days ?? 0)")
                        switch injury.remainingHealingTime.days ?? 0 {
                        case 0: Text(.empty)
                        case 1: Text(.commonDay)
                        case 2...4: Text(.commonDaysSome)
                        default: Text(.commonDaysMany)
                        }
                    }
                }
            }
        }
    }
}
