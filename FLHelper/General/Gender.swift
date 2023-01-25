//
// © 2023 Manicek
//

import Foundation

enum Gender {
    case male
    case female
    case other
    
    var czString: String {
        switch self {
        case .male: return "Muž"
        case .female: return "Žena"
        case .other: return "-"
        }
    }
    
    var iconName: String {
        switch self {
        case .male: return "GenderMan"
        case .female: return "GenderWoman"
        case .other: return ""
        }
    }
}
