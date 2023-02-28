//
// © 2023 Manicek
//

import SwiftUI

struct ConsumablesView: View {
    let consumables: [Consumable: Die]
    
    var body: some View {
        HStack(spacing: 4) {
            ConsumableView(consumable: .food, die: consumables[.food])
            ConsumableView(consumable: .water, die: consumables[.water])
            ConsumableView(consumable: .arrows, die: consumables[.arrows])
            ConsumableView(consumable: .torches, die: consumables[.torches])
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
            Image(die?.systemImageName ?? .square).font(.system(size: 40))
            Text(consumable.name).playerDetailTextFont()
        }
        .frame(width: Constants.size, height: Constants.size)
    }
}
