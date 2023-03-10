//
// © 2023 Manicek
//

import SwiftUI

enum Gender {
    case male
    case female
    case other
    
    var name: LocalizedStringKey {
        switch self {
        case .male: return .characterGenderMale
        case .female: return .characterGenderFemale
        case .other: return .characterGenderOther
        }
    }
    
    var iconName: String {
        switch self {
        case .male: return .genderMan
        case .female: return .genderWoman
        case .other: return ""
        }
    }
}
