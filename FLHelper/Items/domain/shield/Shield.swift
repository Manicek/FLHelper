//
// © 2023 Manicek
//

import SwiftUI

struct Shield: Item {
    var name: LocalizedStringKey
    var type: ItemType
    var weight: Weight
    var price: Price
    var supply: Supply
    var craftingRequirements: CraftingRequirements
    var effect: LocalizedStringKey
    var bonus: Int
    
    static let systemImageName: SystemImageName = .shield
    static let typeName: LocalizedStringKey = .itemsShield
}
