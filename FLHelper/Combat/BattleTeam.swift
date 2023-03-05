//
// © 2023 Manicek
//

import Foundation
import SwiftUI

struct BattleTeam {
    var members: [Entity]
    var color: Color
    
    init(members: [Entity], color: Color) {
        self.members = members
        self.color = color
    }
}
