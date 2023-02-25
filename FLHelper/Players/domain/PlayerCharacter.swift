//
// © 2023 Manicek
//

import Foundation

class PlayerCharacter: Character {
    var willpower: Int
    var experience: Int
    var pride: String?
    var darkSecret: String

    init(
        name: String,
        age: Int,
        gender: Gender,
        attributes: [Attribute : Int],
        skills: [Skill : Int],
        talents: [Talent : Int],
        inventory: [Item],
        kin: Kin,
        profession: Profession,
        reputation: Int,
        money: Money,
        consumables: [Consumable: Die],
        animal: Animal?,
        equippedItems: EquippedItems,
        willpower: Int,
        experience: Int,
        pride: String?,
        darkSecret: String
    ) {
        self.willpower = willpower
        self.experience = experience
        self.pride = pride
        self.darkSecret = darkSecret
        super.init(
            name: name,
            age: age,
            gender: gender,
            speed: 1,
            attributes: attributes,
            skills: skills,
            talents: talents,
            inventory: inventory,
            kin: kin,
            profession: profession,
            reputation: reputation,
            money: money,
            consumables: consumables,
            animal: animal,
            equippedItems: equippedItems
        )
    }
}
