//
// © 2023 Manicek
//

import SwiftUI

struct CriticalInjuriesView: View {
    let injuries: [CriticalInjury]
    
    var body: some View {
        VStack {
            TextLeading(.criticalInjuries)
                .playerDetailSectionTitleFont()
            ForEach(injuries) { injury in
                HStack(spacing: 0) {
                    Text(injury.name)
                    if injury.hasHealingEffect {
                        Text(" - ")
                        Text(injury.effect)
                    }
                    if injury.remainingHealingTime.isPermanent {
                        Text(", ")
                        Text(.criticalInjuriesPermanent)
                    } else {
                        if let days = injury.remainingHealingTime.days {
                            Text(", ")
                            Text("\(days)")
                            switch days {
                            case 0: Text(.empty)
                            case 1: Text(.commonDay)
                            case 2...4: Text(.commonDaysSome)
                            default: Text(.commonDaysMany)
                            }
                        }
                    }
                    Spacer()
                }.padding(.leading, 8)
            }.playerDetailTextFont()
        }
    }
}
