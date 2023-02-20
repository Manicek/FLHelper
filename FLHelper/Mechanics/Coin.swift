//
// © 2023 Manicek
//

import SwiftUI

enum Coin {
    case copper
    case silver
    case gold
    
    var multiplier: Int {
        switch self {
        case .copper: return 1
        case .silver: return 10
        case .gold: return 100
        }
    }
    
    func name(count: Int) -> LocalizedStringKey {
        Self.name(count, type: self)
    }
        
    static func name(_ count: Int, type: Coin) -> LocalizedStringKey {
        switch type {
        case .copper: return nameCopper(count)
        case .silver: return nameSilver(count)
        case .gold: return nameGold(count)
        }
    }
    
    private static func nameCopper(_ count: Int) -> LocalizedStringKey {
        switch count {
        case 1: return .coinCopper
        case 2...4: return .coinCopperSome
        default: return .coinCopperMany
        }
    }
    
    private static func nameSilver(_ count: Int) -> LocalizedStringKey {
        switch count {
        case 1: return .coinSilver
        case 2...4: return .coinSilverSome
        default: return .coinSilverMany
        }
    }
    
    private static func nameGold(_ count: Int) -> LocalizedStringKey {
        switch count {
        case 1: return .coinGold
        case 2...4: return .coinGoldSome
        default: return .coinGoldMany
        }
    }
}
