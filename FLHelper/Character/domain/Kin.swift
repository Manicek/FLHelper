//
// © 2023 Manicek
//

import SwiftUI

enum Kin {
    case human
    case elf
    case halfelf
    case dwarf
    case orc
    case wolfkin
    case halfling
    case goblin
    
    var maleName: LocalizedStringKey {
        switch self {
        case .human: return .kinHumanMale
        case .elf: return .kinElfMale
        case .halfelf: return .kinHalfElfMale
        case .dwarf: return .kinDwarfMale
        case .orc: return .kinOrcMale
        case .wolfkin: return .kinWolfkinMale
        case .halfling: return .kinHalflingMale
        case .goblin: return .kinGoblinMale
        }
    }
    
    var femaleName: LocalizedStringKey {
        switch self {
        case .human: return .kinHumanFemale
        case .elf: return .kinElfFemale
        case .halfelf: return .kinHalfElfFemale
        case .dwarf: return .kinDwarfFemale
        case .orc: return .kinOrcFemale
        case .wolfkin: return .kinWolfkinFemale
        case .halfling: return .kinHalflingFemale
        case .goblin: return .kinGoblinFemale
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
