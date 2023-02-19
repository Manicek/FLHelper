//
// © 2023 Manicek
//

import SwiftUI

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
    
    var name: LocalizedStringKey {
        switch self {
        case .might: return .skillsMight
        case .endurance: return .skillsEndurance
        case .melee: return .skillsMelee
        case .crafting: return .skillsCrafting
        case .stealth: return .skillsStealth
        case .sleightOfHand: return .skillsSleightOfHand
        case .move: return .skillsMove
        case .marksmanship: return .skillsMarksmanship
        case .scouting: return .skillsScouting
        case .lore: return .skillsLore
        case .survival: return .skillsSurvival
        case .insight: return .skillsInsight
        case .manipulation: return .skillsManipulation
        case .performance: return .skillsPerformance
        case .healing: return .skillsHealing
        case .animalHandling: return .skillsAnimalHandling
        }
    }
}
