//
// © 2023 Manicek
//

import Foundation

class Combatant {
    let entity: Entity
    var team: BattleTeam
    var initiative: Int
    
    init(entity: Entity, team: BattleTeam, initiative: Int) {
        self.entity = entity
        self.team = team
        self.initiative = initiative
    }
    
    func takeDamage(_ damage: Int, to attribute: Attribute) {
        if let current = entity.attributes[attribute] {
            entity.attributes[attribute] = max(0, current - damage)
        }
    }
    
    func getHealed(_ healing: Int, to attribute: Attribute) {
        if let current = entity.attributes[attribute] {
            entity.attributes[attribute] = min(entity.maxAttributes[attribute] ?? 4, current + healing)
        }
    }
}
