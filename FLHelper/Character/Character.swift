//
// © 2023 Manicek
//

import Foundation

class Character: Entity {
    let kin: Kin
    let profession: Profession
    var reputation: Int
    var money: Int
    
    var isSleepy: Bool = false
    var isThirsty: Bool = false
    var isHungry: Bool = false
    var isCold: Bool = false
    
    var food: Die?
    var water: Die?
    var arrows: Die?
    var torches: Die?
    
    var animal: Animal?
    
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
        animal: Animal? = nil
    ) {
        self.kin = kin
        self.profession = profession
        self.reputation = reputation
        self.money = money
        self.food = food
        self.water = water
        self.arrows = arrows
        self.torches = torches
        self.animal = animal
        super.init(
            name: name,
            age: age,
            speed: 1,
            attributes: attributes,
            skills: skills,
            talents: talents,
            inventory: inventory
        )
    }
}
