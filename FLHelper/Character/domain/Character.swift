//
// © 2023 Manicek
//

import Foundation

protocol Character: Entity {
    var kin: Kin { get set }
    var profession: Profession { get set }
    var reputation: Int { get set }
    var conditions: [CharacterCondition: Bool] { get set }
    var injuries: [CriticalInjury] { get set }
    var animal: Animal { get set }
    var equippedItems: EquippedItems { get set }
    var characterVisuals: CharacterVisuals { get set }
    var weapons: [Weapon] { get }
}

extension Character {
    var weapons: [Weapon] {
        (inventory.items.filter { $0 is Weapon } as? [Weapon]) ?? []
    }
}
