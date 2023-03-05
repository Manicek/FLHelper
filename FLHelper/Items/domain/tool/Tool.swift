//
// © 2023 Manicek
//

import SwiftUI

struct Tool: Item {
    var name: LocalizedStringKey
    var type: ItemType
    var weight: Weight
    var price: Price
    var supply: Supply
    var craftingRequirements: CraftingRequirements
    var effect: LocalizedStringKey
}
