//
// © 2023 Manicek
//

import Foundation

struct CraftingRequirements {
    let materials: [RawMaterial: Double]
    let talents: [Talent]
    let tools: [Tool]
    let special: [SpecialRequirement]
    let quarterDays: Int
}
