//
// © 2023 Manicek
//

import Foundation

class Animal: Entity {
    let type: AnimalType
    
    init(name: String, type: AnimalType, age: Int, speed: Int, attributes: [Attribute : Int], skills: [Skill : Int]) {
        self.name = name
        self.type = type
        self.age = age
        self.speed = speed
        self.attributes = attributes
        self.skills = skills
    }
}
