//
// © 2023 Manicek
//

import Foundation

struct Price: ExpressibleByIntegerLiteral {
    let price: Int
    
    init(integerLiteral value: IntegerLiteralType) {
        self.price = value
    }
    
    var amountAndCoin: AmountAndCoin {
        if price.isMultiple(of: 100) {
            return AmountAndCoin(amount: price / 100, coin: .gold)
        } else if price.isMultiple(of: 10) {
            return AmountAndCoin(amount: price / 10, coin: .silver)
        } else {
            return AmountAndCoin(amount: price, coin: .copper)
        }
    }
}
