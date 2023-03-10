//
// © 2023 Manicek
//

import SwiftUI

enum HuntingSearchSuccessResultOption: CaseIterable {
    case mouse
    case crow
    case rabbit
    case fox
    case boar
    case deer
    
    var order: Int {
        switch self {
        case .mouse: return 1
        case .crow: return 2
        case .rabbit: return 3
        case .fox: return 4
        case .boar: return 5
        case .deer: return 6
        }
    }
    
    var name: LocalizedStringKey {
        switch self {
        case .mouse: return .animalMouse
        case .crow: return .animalCrow
        case .rabbit: return .animalRabbit
        case .fox: return .animalFox
        case .boar: return .animalBoar
        case .deer: return .animalDeer
        }
    }
    
    var difficutly: Int {
        switch self {
        case .mouse, .rabbit:
            return 1
        case .crow, .deer:
            return 0
        case .fox, .boar:
            return -1
        }
    }
    
    var isCatchable: Bool {
        switch self {
        case .mouse, .rabbit, .fox:
            return true
        case .crow, .boar, .deer:
            return false
        }
    }
    
    var meat: Int {
        switch self {
        case .mouse, .crow:
            return 1
        case .rabbit:
            return 2
        case .fox:
            return 3
        case .boar:
            return 4
        case .deer:
            return 5
        }
    }
    
    var pelt: Int {
        switch self {
        case .mouse, .crow:
            return 0
        case .rabbit, .fox:
            return 1
        case .boar:
            return 2
        case .deer:
            return 3
        }
    }
}
