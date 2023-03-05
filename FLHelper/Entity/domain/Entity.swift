//
// © 2023 Manicek
//

import Foundation

protocol Entity {
    var name: String { get set }
    var age: Int { get set }
    var gender: Gender { get set }
    var speed: Int { get set }
    var attributes: [Attribute: Int] { get set }
    var maxAttributes: [Attribute: Int] { get set }
    var skills: [Skill: Int] { get set }
    var talents: [Talent: Int] { get set }
    var inventory: Inventory { get set }
    
    func isOverEncumbered() -> Bool
}

extension Entity {
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
        for item in inventory.items {
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
