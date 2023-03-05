//
// © 2023 Manicek
//

import Foundation

struct Inventory {
    var items: [Item]
    var money: Money
    var consumables: [Consumable: Die]
    var encumbranceCapacity: Int
    
    init(items: [Item], money: Money, consumables: [Consumable: Die], encumbranceCapacity: Int) {
        self.items = items
        self.money = money
        self.consumables = consumables
        self.encumbranceCapacity = encumbranceCapacity
    }
}
