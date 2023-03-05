//
// © 2023 Manicek
//

import SwiftUI

struct Weapon: Item, Identifiable, Equatable {
    let id = UUID()
    var name: LocalizedStringKey
    var type: ItemType
    var weight: Weight
    var price: Price
    var supply: Supply
    var craftingRequirements: CraftingRequirements
    var effect: LocalizedStringKey
    let range: Range
    let grip: WeaponGrip
    let features: [WeaponFeature]
    var bonus: Int
    var damage: Int
    
    static func ==(lhs: Weapon, rhs: Weapon) -> Bool {
        lhs.name == rhs.name
        && lhs.type == rhs.type
    }
}
