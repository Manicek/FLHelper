//
// © 2023 Manicek
//

import Foundation

class Entity {
    let name: String
    var age: Int
    var speed: Int
    var attributes: [Attribute: Int]
    var skills: [Skill: Int]
    var talents: [Talent: Int]
    var inventory: [Item]
    
    init(
        name: String,
        age: Int,
        speed: Int,
        attributes: [Attribute : Int],
        skills: [Skill : Int],
        talents: [Talent : Int],
        inventory: [Item]
    ) {
        self.name = name
        self.age = age
        self.speed = speed
        self.attributes = attributes
        self.skills = skills
        self.talents = talents
        self.inventory = inventory
    }
}
