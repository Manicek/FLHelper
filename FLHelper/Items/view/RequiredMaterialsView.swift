//
// © 2023 Manicek
//

import SwiftUI

struct RequiredMaterialsView: View {
    let item: Item
    
    var body: some View {
        switch item.craftingRequirements.materialPairs.count {
        case 0:
            Text(.empty)
        case 1:
            HStack(spacing: 2) {
                Text(item.craftingRequirements.materialPairs[0].valueText)
                Text(
                    item.craftingRequirements.materialPairs[0].rawMaterial.name(
                        count: item.craftingRequirements.materialPairs[0].value
                    )
                )
            }
        case 2:
            HStack(spacing: 0) {
                Text(item.craftingRequirements.materialPairs[0].valueText)
                    .padding(.trailing, 2)
                Text(
                    item.craftingRequirements.materialPairs[0].rawMaterial.name(
                        count: item.craftingRequirements.materialPairs[0].value
                    )
                )
                Text(", ")
                Text(item.craftingRequirements.materialPairs[1].valueText)
                    .padding(.trailing, 2)
                Text(
                    item.craftingRequirements.materialPairs[1].rawMaterial.name(
                        count: item.craftingRequirements.materialPairs[1].value
                    )
                )
            }
        case 3:
            VStack {
                HStack(spacing: 0) {
                    Text(item.craftingRequirements.materialPairs[0].valueText)
                        .padding(.trailing, 2)
                    Text(
                        item.craftingRequirements.materialPairs[0].rawMaterial.name(
                            count: item.craftingRequirements.materialPairs[0].value
                        )
                    )
                    Text(", ")
                    Text(item.craftingRequirements.materialPairs[1].valueText)
                        .padding(.trailing, 2)
                    Text(
                        item.craftingRequirements.materialPairs[1].rawMaterial.name(
                            count: item.craftingRequirements.materialPairs[1].value
                        )
                    )
                    Text(", ")
                }
                HStack(spacing: 2) {
                    Text(item.craftingRequirements.materialPairs[2].valueText)
                    Text(
                        item.craftingRequirements.materialPairs[2].rawMaterial.name(
                            count: item.craftingRequirements.materialPairs[2].value
                        )
                    )
                }
            }
        default:
            Text("...")
        }
    }
}
