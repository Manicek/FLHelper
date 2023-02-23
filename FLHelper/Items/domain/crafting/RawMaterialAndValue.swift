//
// © 2023 Manicek
//

import Foundation

struct RawMaterialAndValue {
    let rawMaterial: RawMaterial
    let value: Double
    
    var valueText: String {
        if floor(value) == value {
            return String(Int(value))
        }
        switch value {
        case 0.1:
            return "1/10"
        case 0.2:
            return "1/5"
        case 0.25:
            return "1/4"
        case 0.5:
            return "1/2"
        default:
            return String(value)
        }
    }
}
