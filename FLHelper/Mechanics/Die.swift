//
// © 2023 Manicek
//

import SwiftUI

enum Die {
    static let lowestDie: Die = .d6
    static let highestDie: Die = .d12
    
    case d6
    case d8
    case d10
    case d12
    
    var name: LocalizedStringKey {
        switch self {
        case .d6: return .d6
        case .d8: return .d8
        case .d10: return .d10
        case .d12: return .d12
        }
    }
    
    var systemImageName: SystemImageName {
        switch self {
        case .d6: return .square6
        case .d8: return .square8
        case .d10: return .square10
        case .d12: return .square12
        }
    }
    
    var canBeLowered: Bool {
        self != .d6
    }
    
    var canBeIncreased: Bool {
        self != .d12
    }
    
    var lowerDie: Die? {
        switch self {
        case .d6: return nil
        case .d8: return .d6
        case .d10: return .d8
        case .d12: return .d10
        }
    }
    
    var higherDie: Die {
        switch self {
        case .d6: return .d8
        case .d8: return .d10
        case .d10: return .d12
        case .d12: return .d12
        }
    }
    
    func roll() -> Int {
        switch self {
        case .d6: return Int.random(in: 1...6)
        case .d8: return Int.random(in: 1...8)
        case .d10: return Int.random(in: 1...10)
        case .d12: return Int.random(in: 1...12)
        }
    }
    
    static func succesesForRoll(_ roll: Int) -> Int {
        switch roll {
        case 6, 7: return 1
        case 8, 9: return 2
        case 10, 11: return 3
        case 12: return 4
        default: return 0
        }
    }
}
