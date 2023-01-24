//
// © 2023 Manicek
//

import Foundation

class Item {
    var name: String
    var weight: Weight
    var price: Int
    var supply: Supply?
    var rawMaterials: [RawMaterial: Int]?
    var quarterDaysToMake: Int?
    var requiredTalents: [Talent]?
    var requiredTools: [Tool]?
    
    init(
        name: String,
        weight: Weight,
        price: Int,
        supply: Supply? = nil,
        rawMaterials: [RawMaterial : Int]? = nil,
        quarterDaysToMake: Int? = nil,
        requiredTalents: [Talent]? = nil,
        requiredTools: [Tool]? = nil
    ) {
        self.name = name
        self.weight = weight
        self.price = price
        self.supply = supply
        self.rawMaterials = rawMaterials
        self.quarterDaysToMake = quarterDaysToMake
        self.requiredTalents = requiredTalents
        self.requiredTools = requiredTools
    }
}
