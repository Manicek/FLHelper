//
// © 2023 Manicek
//

import Foundation

class Character: Entity {
    let kin: Kin
    let profession: Profession
    var reputation: Int
    var money: Money
    var states: [CharacterState: Bool] = [.sleepy: false, .cold: false, .hungry: false, .thirsty: false]
    var consumables: [Consumable: Die]
    var animal: Animal?
    var equippedItems: EquippedItems
    
    var weapons: [Weapon] {
        (inventory.filter { $0 is Weapon } as? [Weapon]) ?? []
    }
    
    init(
        name: String,
        age: Int,
        gender: Gender,
        speed: Int,
        attributes: [Attribute : Int],
        skills: [Skill : Int],
        talents: [Talent : Int],
        inventory: [Item],
        kin: Kin,
        profession: Profession,
        reputation: Int,
        money: Money,
        consumables: [Consumable: Die],
        animal: Animal? = nil,
        equippedItems: EquippedItems = EquippedItems()
    ) {
        self.kin = kin
        self.profession = profession
        self.reputation = reputation
        self.money = money
        self.consumables = consumables
        self.animal = animal
        self.equippedItems = equippedItems
        super.init(
            name: name,
            age: age,
            gender: gender,
            speed: 1,
            attributes: attributes,
            skills: skills,
            talents: talents,
            inventory: inventory
        )
    }
}
