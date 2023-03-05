//
// © 2023 Manicek
//

import Foundation

struct Animal: Entity {
    var name: String
    var age: Int
    var gender: Gender
    var speed: Int
    var attributes: [Attribute: Int]
    var maxAttributes: [Attribute: Int]
    var skills: [Skill: Int]
    var talents: [Talent: Int]
    var inventory: Inventory
    let type: AnimalType
    
    static let empty = Animal(
        name: "",
        age: 0,
        gender: .other,
        speed: 0,
        attributes: [:],
        maxAttributes: [:],
        skills: [:],
        talents: [:],
        inventory: Inventory(items: [], money: Money.empty, consumables: [:], encumbranceCapacity: 0),
        type: .empty
    )
}
