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
    let weaponType: WeaponType
    let range: Range
    let grip: WeaponGrip
    var bonus: Int
    var damage: Int
    
    init(
        name: String,
        weight: Weight,
        price: Int,
        weaponType: WeaponType,
        range: Range,
        grip: WeaponGrip,
        bonus: Int,
        damage: Int
    ) {
        self.weaponType = weaponType
        self.range = range
        self.grip = grip
        self.bonus = bonus
        self.damage = damage
        super.init(
            name: name,
            type: .weapon,
            weight: weight,
            price: price
        )
    }
}

