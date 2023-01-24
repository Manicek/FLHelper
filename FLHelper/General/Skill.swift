//
// © 2023 Manicek
//

import Foundation

enum Skill {
    // MARK: - Strength
    case might
    case endurance
    case melee
    case crafting
    // MARK: - Agility
    case stealth
    case move
    case sleightOfHand
    case marksmanship
    // MARK: - Wits
    case scouting
    case lore
    case survival
    case insight
    // MARK: - Empathy
    case manipulation
    case healing
    case performance
    case animalHandling
    
    var attribute: Attribute {
        switch self {
        case .might, .endurance, .melee, .crafting: return .strength
        case .stealth, .move, .sleightOfHand, .marksmanship: return .agility
        case .scouting, .lore, .survival, .insight: return .wits
        case .manipulation, .healing, .performance, .animalHandling: return .empathy
        }
    }
}
