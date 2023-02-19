//
// © 2023 Manicek
//

import SwiftUI

enum Profession {
    case druid
    case fighter
    case hunter
    case minstrel
    case peddler
    case rider
    case rogue
    case sorcerer
    case other
    
    var maleName: LocalizedStringKey {
        switch self {
        case .druid: return .professionDruidMale
        case .fighter: return .professionFighterMale
        case .hunter: return .professionHunterMale
        case .minstrel: return .professionMinstrelMale
        case .peddler: return .professionPeddlerMale
        case .rider: return .professionRiderMale
        case .rogue: return .professionRogueMale
        case .sorcerer: return .professionSorcererMale
        case .other: return .professionOtherMale
        }
    }
    
    var femaleName: LocalizedStringKey {
        switch self {
        case .druid: return .professionDruidFemale
        case .fighter: return .professionFighterFemale
        case .hunter: return .professionHunterFemale
        case .minstrel: return .professionMinstrelFemale
        case .peddler: return .professionPeddlerFemale
        case .rider: return .professionRiderFemale
        case .rogue: return .professionRogueFemale
        case .sorcerer: return .professionSorcererFemale
        case .other: return .professionOtherFemale
        }
    }
    
    func name(gender: Gender) -> LocalizedStringKey {
        switch gender {
        case .male: return maleName
        case .female: return femaleName
        case .other: return maleName
        }
    }
}
