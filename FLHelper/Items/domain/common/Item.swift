//
// © 2023 Manicek
//

import SwiftUI

protocol Item {
    var name: LocalizedStringKey { get set }
    var type: ItemType { get set }
    var weight: Weight { get set }
    var price: Price { get set }
    var supply: Supply { get set }
    var craftingRequirements: CraftingRequirements { get set }
    var effect: LocalizedStringKey { get set }
}
