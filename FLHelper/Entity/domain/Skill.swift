//
// © 2023 Manicek
//

import Foundation

enum Skill: CaseIterable {
    // MARK: - Strength
    case might
    case endurance
    case melee
    case crafting
    // MARK: - Agility
    case stealth
    case sleightOfHand
    case move
    case marksmanship
    // MARK: - Wits
    case scouting
    case lore
    case survival
    case insight
    // MARK: - Empathy
    case manipulation
    case performance
    case healing
    case animalHandling
    
    var attribute: Attribute {
        switch self {
        case .might, .endurance, .melee, .crafting: return .strength
        case .stealth, .move, .sleightOfHand, .marksmanship: return .agility
        case .scouting, .lore, .survival, .insight: return .wits
        case .manipulation, .healing, .performance, .animalHandling: return .empathy
        }
    }
    
    var czName: String {
        switch self {
        case .might: return "Svaly"
        case .endurance: return "Výdrž"
        case .melee: return "Boj zblízka"
        case .crafting: return "Řemesla"
        case .stealth: return "Plížení"
        case .sleightOfHand: return "Zlodějina"
        case .move: return "Mrštnost"
        case .marksmanship: return "Střelba"
        case .scouting: return "Ostražitost"
        case .lore: return "Příběhy"
        case .survival: return "Přežití"
        case .insight: return "Empatie"
        case .manipulation: return "Manipulace"
        case .performance: return "Vystupování"
        case .healing: return "Léčení"
        case .animalHandling: return "Zvířata"
        }
    }
}
