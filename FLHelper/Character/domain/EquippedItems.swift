//
// © 2023 Manicek
//

import Foundation

class EquippedItems {
    var helmet: Armor?
    var bodyArmor: Armor?
    var shield: Shield?
    var mainHandWeapon: Weapon?
    var offHandWeapon: Weapon?
    
    init(
        helmet: Armor? = nil,
        bodyArmor: Armor? = nil,
        shield: Shield? = nil,
        mainHandWeapon: Weapon? = nil,
        offHandWeapon: Weapon? = nil
    ) {
        self.helmet = helmet
        self.bodyArmor = bodyArmor
        self.shield = shield
        self.mainHandWeapon = mainHandWeapon
        self.offHandWeapon = offHandWeapon
    }
}
