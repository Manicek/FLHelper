//
// © 2023 Manicek
//

import Foundation

class Shield: Item {
    static let systemImageName = "shield"
    static let czName = "Štít"
    
    var bonus: Int
    
    init(
        name: String,
        weight: Weight,
        price: Int,
        supply: Supply? = nil,
        rawMaterials: [RawMaterial : Int]? = nil,
        quarterDaysToMake: Int? = nil,
        requiredTalents: [Talent]? = nil,
        requiredTools: [Tool]? = nil,
        bonus: Int
    ) {
        self.bonus = bonus
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
