//
// © 2023 Manicek
//

import SwiftUI

struct ItemPriceView: View {
    let item: Item
    
    var body: some View {
        if item.price.price == 0 {
            TextLeading(.empty)
        } else {
            HStack(spacing: 2) {
                Text(item.price.amountAndCoin.amount)
                Text(item.price.amountAndCoin.coin.name(count: item.price.amountAndCoin.amount))
                Spacer()
            }
        }
    }
}
