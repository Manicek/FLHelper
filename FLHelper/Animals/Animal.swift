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
        gender: Gender,
        speed: Int,
        attributes: [Attribute: Int],
        skills: [Skill: Int],
        inventory: [Item]
    ) {
        self.type = type
        super.init(
            name: name,
            age: age,
            gender: gender,
            speed: speed,
            attributes: attributes,
            skills: skills,
            talents: [:],
            inventory: inventory
        )
    }
}
