//
// © 2023 Manicek
//

import Foundation
import SwiftUI

class BattleTeam {
    var members: [Entity]
    var color: Color
    
    init(members: [Entity], color: Color) {
        self.members = members
        self.color = color
    }
}
