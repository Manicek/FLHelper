//
// © 2023 Manicek
//

import SwiftUI

struct RequiredMaterialsView: View {
    let item: Item
    
    var body: some View {
        if item.craftingRequirements.materialPairs.isEmpty {
            TextLeading(.empty)
        } else {
            VStack {
                ForEach(item.craftingRequirements.materialPairs, id: \.rawMaterial.self) { materialPair in
                    HStack(spacing: 0) {
                        Text(materialPair.valueText)
                            .padding(.trailing, 2)
                        Text(materialPair.rawMaterial.name(count: materialPair.value))
                        Spacer()
                    }
                }
            }
        }
    }
}
