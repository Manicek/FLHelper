//
// © 2023 Manicek
//

import SwiftUI

struct InventoryView: View {
    let inventory: Inventory
    
    var body: some View {
        VStack {
            ForEach(inventory.items.indices, id: \.self) { index in
                let item = inventory.items[index]
                let row = index + 1
                HStack {
                    Text(row)
                        .playerDetailTextFont()
                        .frame(width: 8)
                    Text(item.name)
                        .playerDetailTextFont()
                    Spacer()
                }
                .background(row > inventory.encumbranceCapacity ? Color.tableRowBackgroundRed : Color.clear)
            }
        }
    }
}
