//
// © 2023 Manicek
//

import Foundation

class ItemsViewModel: ObservableObject {
    @Inject private var getDefaultItems: GetDefaultItemsInteractor
    
    @Published var items: [Item] = []
    
    init(type: ItemType) {
        items = getDefaultItems(type: type)
    }
}
