//
// © 2023 Manicek
//

import Foundation

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
    
    var czMale: String {
        switch self {
        case .druid: return "Druid"
        case .fighter: return "Bojovník"
        case .hunter: return "Lovec"
        case .minstrel: return "Bard"
        case .peddler: return "Kupec"
        case .rider: return "Jezdec"
        case .rogue: return "Zloděj"
        case .sorcerer: return "Čaroděj"
        case .other: return "Ostatní"
        }
    }
    
    var czFemale: String {
        switch self {
        case .druid: return "Druidka"
        case .fighter: return "Bojovnice"
        case .hunter: return "Lovkyně"
        case .minstrel: return "Bard"
        case .peddler: return "Kupkyně"
        case .rider: return "Jezdkyně"
        case .rogue: return "Zlodějka"
        case .sorcerer: return "Čarodějka"
        case .other: return "Ostatní"
        }
    }
}
