//
// © 2023 Manicek
//

import Foundation

enum Kin {
    case human
    case elf
    case halfelf
    case dwarf
    case orc
    case wolfkin
    case halfling
    case goblin
    
    var czMale: String {
        switch self {
        case .human: return "Člověk"
        case .elf: return "Elf"
        case .halfelf: return "Půlelf"
        case .dwarf: return "Trpaslík"
        case .orc: return "Ork"
        case .wolfkin: return "Vlken"
        case .halfling: return "Půlčík"
        case .goblin: return "Skřet"
        }
    }
    
    var czFemale: String {
        switch self {
        case .human: return "Člověk"
        case .elf: return "Elfka"
        case .halfelf: return "Půlelfka"
        case .dwarf: return "Trpaslice"
        case .orc: return "Orkyně"
        case .wolfkin: return "Vlkenka"
        case .halfling: return "Půlčice"
        case .goblin: return "Skřetka"
        }
    }
}
