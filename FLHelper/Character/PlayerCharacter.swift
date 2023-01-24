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
        speed: Int,
        attributes: [Attribute : Int],
        skills: [Skill : Int],
        talents: [Talent : Int],
        inventory: [Item],
        kin: Kin,
        profession: Profession,
        reputation: Int,
        money: Int,
        food: Die? = nil,
        water: Die? = nil,
        arrows: Die? = nil,
        torches: Die? = nil,
        animal: Animal? = nil,
        willpower: Int,
        experience: Int,
        pride: String? = nil,
        darkSecret: String
    ) {
        self.willpower = willpower
        self.experience = experience
        self.pride = pride
        self.darkSecret = darkSecret
        super.init(
            name: name,
            age: age,
            speed: speed,
            attributes: attributes,
            skills: skills,
            talents: talents,
            inventory: inventory,
            kin: kin,
            profession: profession,
            reputation: reputation,
            money: money
        )
    }
}
