//
// © 2023 Manicek
//

import Foundation

// MARK: - WeaponType

enum WeaponType {
    case melee
    case ranged
}

// MARK: - WeaponGrip

enum WeaponGrip {
    case oneHanded
    case twoHanded
}

// MARK: - Weapon

class Weapon: Item {
    var name: String
    var weight: Weight
    let type: WeaponType
    let range: Range
    let grip: WeaponGrip
    var bonus: Int
    var damage: Int
    
    init(name: String, weight: Weight, type: WeaponType, range: Range, grip: WeaponGrip, bonus: Int, damage: Int) {
        self.name = name
        self.weight = weight
        self.type = type
        self.range = range
        self.grip = grip
        self.bonus = bonus
        self.damage = damage
    }
}

