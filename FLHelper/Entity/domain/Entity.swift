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
    
    func isOverEncumbered() -> Bool {
        var inventorySlots = Double(maxAttributes[.strength] ?? 2) * 2
        if let packRatLevel = talents[.packRat] {
            switch packRatLevel {
            case 1: inventorySlots += 2
            case 2: inventorySlots += 5
            case 3: inventorySlots += 10
            default: break
            }
        }
        var usedSlots = 0.0
        for item in inventory {
            switch item.weight {
            case .tiny: break
            case .light: usedSlots += 0.5
            case .normal: usedSlots += 1
            case .heavy: usedSlots += 2
            case .superHeavy(let weight): usedSlots += Double(weight)
            }
        }
        return usedSlots > inventorySlots
    }
}
