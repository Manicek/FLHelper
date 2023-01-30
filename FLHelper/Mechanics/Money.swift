//
// © 2023 Manicek
//

import Foundation

enum Money {
    case copper
    case silver
    case gold
        
    static func czName(_ count: Int, type: Money) -> String {
        switch type {
        case .copper: return czNameCopper(count)
        case .silver: return czNameSilver(count)
        case .gold: return czNameGold(count)
        }
    }
    
    private static func czNameCopper(_ count: Int) -> String {
        switch count {
        case 1: return "Měďák"
        case 2...4: return "Měďáky"
        default: return "Měďáků"
        }
    }
    
    private static func czNameSilver(_ count: Int) -> String {
        switch count {
        case 1: return "Stříbrňák"
        case 2...4: return "Stříbrňák"
        default: return "Stříbrňáků"
        }
    }
    
    private static func czNameGold(_ count: Int) -> String {
        switch count {
        case 1: return "Zlaťák"
        case 2...4: return "Zlaťáky"
        default: return "Zlaťáků"
        }
    }
}
