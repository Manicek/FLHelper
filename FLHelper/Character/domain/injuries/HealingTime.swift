//
// © 2023 Manicek
//

import Foundation

struct HealingTime {
    let isPermanent: Bool
    let days: Int?
    
    init(isPermanent: Bool, days: Int?) {
        self.isPermanent = isPermanent
        self.days = days
    }
}
