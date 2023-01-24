//
// © 2023 Manicek
//

import Foundation

class Animal: Entity {
    let type: AnimalType
    
    init(
        name: String,
        type: AnimalType,
        age: Int,
        speed: Int,
        attributes: [Attribute: Int],
        skills: [Skill: Int],
        talents: [Talent: Int],
        inventory: [Item]
    ) {
        self.type = type
        super.init(
            name: name,
            age: age,
            speed: speed,
            attributes: attributes,
            skills: skills,
            talents: talents,
            inventory: inventory
        )
    }
}
