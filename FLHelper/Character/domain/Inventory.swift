//
// © 2023 Manicek
//

import Foundation

class Inventory {
    var items: [Item]
    var encumbranceCapacity: Int
    
    init(items: [Item], encumbranceCapacity: Int) {
        self.items = items
        self.encumbranceCapacity = encumbranceCapacity
    }
}
