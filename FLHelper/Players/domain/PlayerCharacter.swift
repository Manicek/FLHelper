//
// © 2023 Manicek
//

import Foundation

struct PlayerCharacter: Character {
    var name: String
    var kin: Kin
    var profession: Profession
    var age: Int
    var gender: Gender
    var reputation: Int
    var attributes: [Attribute: Int]
    var maxAttributes: [Attribute: Int]
    var skills: [Skill: Int]
    var speed: Int
    var talents: [Talent: Int]
    var inventory: Inventory
    var conditions: [CharacterCondition: Bool]
    var injuries: [CriticalInjury]
    var animal: Animal
    var equippedItems: EquippedItems
    var characterVisuals: CharacterVisuals
    var willpower: Int
    var experience: Int
    var pride: String?
    var darkSecret: String

    init(
        name: String,
        kin: Kin,
        profession: Profession,
        age: Int,
        gender: Gender,
        reputation: Int,
        attributes: [Attribute: Int],
        skills: [Skill: Int],
        talents: [Talent: Int],
        inventory: Inventory,
        injuries: [CriticalInjury],
        animal: Animal,
        equippedItems: EquippedItems,
        characterVisuals: CharacterVisuals,
        willpower: Int,
        experience: Int,
        pride: String?,
        darkSecret: String
    ) {
        self.name = name
        self.kin = kin
        self.profession = profession
        self.age = age
        self.gender = gender
        self.reputation = reputation
        self.attributes = attributes
        self.maxAttributes = attributes
        self.skills = skills
        self.speed = 1
        self.talents = talents
        self.inventory = inventory
        self.conditions = [.sleepy: false, .cold: false, .hungry: false, .thirsty: false]
        self.injuries = injuries
        self.animal = animal
        self.equippedItems = equippedItems
        self.characterVisuals = characterVisuals
        self.willpower = willpower
        self.experience = experience
        self.pride = pride
        self.darkSecret = darkSecret
    }
}
