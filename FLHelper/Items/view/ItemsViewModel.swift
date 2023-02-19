//
// © 2023 Manicek
//

import Foundation

class ItemsViewModel: ObservableObject {
    @Inject private var getDefaultItems: GetDefaultItemsInteractor
    
    let itemType: ItemType
    @Published var items: [Item] = []
    
    init(type: ItemType) {
        self.itemType = type
        items = getDefaultItems(type: type)
    }
}
