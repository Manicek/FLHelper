//
// © 2023 Manicek
//

import SwiftUI

struct RequiredToolsAndSpecialView: View {
    let item: Item
    
    var body: some View {
        if item.craftingRequirements.special.isEmpty && item.craftingRequirements.tools.isEmpty {
            TextLeading(.empty)
        } else {
            VStack {
                ForEach(item.craftingRequirements.special, id: \.self) { specialRequirement in
                    TextLeading(specialRequirement.name)
                }
                ForEach(item.craftingRequirements.tools, id: \.self) { tool in
                    TextLeading(tool.name)
                }
            }
        }
    }
}
