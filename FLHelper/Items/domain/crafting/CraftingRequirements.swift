//
// © 2023 Manicek
//

import SwiftUI

struct CraftingRequirements {
    let materials: [RawMaterial: Double]
    let talents: [Talent]
    let tools: [ToolOption]
    let special: [SpecialRequirement]
    let quarterDays: Int
    
    var timeText: LocalizedStringKey {
        switch quarterDays {
        case 0: return .empty
        case 1: return .craftingTimeQuarterDay
        case 2: return .craftingTimeOneDay
        case 4: return .craftingTimeTwoDays
        case 14: return .craftingTimeOneWeek
        case 28: return .craftingTimeTwoWeeks
        default: return "\(quarterDays)"
        }
    }
    
    var materialPairs: [RawMaterialAndValue] {
        var pairs: [RawMaterialAndValue] = []
        for key in materials.keys {
            if let value = materials[key] {
                pairs.append(
                    RawMaterialAndValue(rawMaterial: key, value: value)
                )
            }
        }
        return pairs
    }
}

// MARK: - Equatable

extension CraftingRequirements: Equatable {
}
