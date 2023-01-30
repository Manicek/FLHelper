//
// © 2023 Manicek
//

import Foundation

class Entity {
    var name: String
    var age: Int
    var gender: Gender
    var speed: Int
    var attributes: [Attribute: Int]
    let maxAttributes: [Attribute: Int]
    var skills: [Skill: Int]
    var talents: [Talent: Int]
    var inventory: [Item]
    
    init(
        name: String,
        age: Int,
        gender: Gender,
        speed: Int,
        attributes: [Attribute : Int],
        skills: [Skill : Int],
        talents: [Talent : Int],
        inventory: [Item]
    ) {
        self.name = name
        self.age = age
        self.gender = gender
        self.speed = speed
        self.attributes = attributes
        self.maxAttributes = attributes
        self.skills = skills
        self.talents = talents
        self.inventory = inventory
    }
}
