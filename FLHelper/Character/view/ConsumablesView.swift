//
// © 2023 Manicek
//

import SwiftUI

struct ConsumablesView: View {
    let consumables: [Consumable: Die]
    
    var body: some View {
        VStack(spacing: 4) {
            HStack(spacing: 4) {
                ConsumableView(consumable: .food, die: consumables[.food])
                ConsumableView(consumable: .water, die: consumables[.water])
            }
            HStack(spacing: 4) {
                ConsumableView(consumable: .arrows, die: consumables[.arrows])
                ConsumableView(consumable: .torches, die: consumables[.torches])
            }
        }
    }
}

// MARK: - ConsumableView

private struct ConsumableView: View {
    enum Constants {
        static let size: CGFloat = 72
    }
    
    let consumable: Consumable
    let die: Die?
    
    var body: some View {
        VStack {
            Image(systemName: die?.systemImageName ?? "square").font(.system(size: 40))
            Text(consumable.czName).playerDetailTextFont()
        }
        .frame(width: Constants.size, height: Constants.size)
    }
}
