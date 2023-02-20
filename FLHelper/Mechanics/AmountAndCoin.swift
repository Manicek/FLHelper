//
// © 2023 Manicek
//

import SwiftUI

struct AmountAndCoin: Equatable {
    let amount: Int
    let coin: Coin
    
    var value: Int {
        amount * coin.multiplier
    }
}
