//
// © 2023 Manicek
//

import Foundation

struct Battle {
    var round: Int = 0
    var teams: [BattleTeam]
    var combatants: [Combatant]
    
    init(round: Int, teams: [BattleTeam], combatants: [Combatant]) {
        self.round = round
        self.teams = teams
        self.combatants = combatants
    }
}
