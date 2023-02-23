//
// © 2023 Manicek
//

import SwiftUI

struct RequiredToolsAndSpecialView: View {
    let item: Item
    
    var body: some View {
        switch (item.craftingRequirements.special.count, item.craftingRequirements.tools.count) {
        case (0, 0):
            Text(.empty)
        case (1, 0):
            Text(item.craftingRequirements.special[0].name)
        case (0, 1):
            Text(item.craftingRequirements.tools[0].name)
        case (1, 1):
            HStack(spacing: 0) {
                Text(item.craftingRequirements.special[0].name)
                Text(", ")
                Text(item.craftingRequirements.tools[0].name)
            }
        case (2, 0):
            HStack(spacing: 0) {
                Text(item.craftingRequirements.special[0].name)
                Text(", ")
                Text(item.craftingRequirements.special[1].name)
            }
        case (0, 2):
            HStack(spacing: 0) {
                Text(item.craftingRequirements.tools[0].name)
                Text(", ")
                Text(item.craftingRequirements.tools[1].name)
            }
        default:
            Text("...")
        }
    }
}
