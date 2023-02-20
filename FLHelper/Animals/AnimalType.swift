//
// © 2023 Manicek
//

import SwiftUI

enum AnimalType {
    case bear
    case wolf
    case fox
    case deer
    case boar
    case horse
    case warhorse
    case donkey
    case wardog
    case crocodile
    case dog
    case cat
    case rats
    case bats
    case raven
    case eagle
    case snake
    case scorpion
    case spider
    
    var name: LocalizedStringKey {
        switch self {
        case .bear: return .animalBear
        case .wolf: return .animalWolf
        case .fox: return .animalFox
        case .deer: return .animalDeer
        case .boar: return .animalBoar
        case .horse: return .animalHorse
        case .warhorse: return .animalWarhorse
        case .donkey: return .animalDonkey
        case .wardog: return .animalWardog
        case .crocodile: return .animalCrocodile
        case .dog: return .animalDog
        case .cat: return .animalCat
        case .rats: return .animalRats
        case .bats: return .animalBats
        case .raven: return .animalRaven
        case .eagle: return .animalEagle
        case .snake: return .animalSnake
        case .scorpion: return .animalScorpion
        case .spider: return .animalSpider
        }
    }
}
