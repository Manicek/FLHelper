//
// © 2023 Manicek
//

import Foundation

enum ArmorType {
    case helmet
    case body
}

class Armor: Item {
    var armorRating: Int
    var type: ArmorType
    var description: String?
    
    init(
        name: String,
        weight: Weight,
        price: Int,
        supply: Supply? = nil,
        rawMaterials: [RawMaterial : Int]? = nil,
        quarterDaysToMake: Int? = nil,
        requiredTalents: [Talent]? = nil,
        requiredTools: [Tool]? = nil,
        armorRating: Int,
        type: ArmorType,
        description: String?
    ) {
        self.armorRating = armorRating
        self.type = type
        self.description = description
        super.init(
            name: name,
            weight: weight,
            price: price,
            supply: supply,
            rawMaterials: rawMaterials,
            quarterDaysToMake: quarterDaysToMake,
            requiredTalents: requiredTalents,
            requiredTools: requiredTools
        )
    }
}
