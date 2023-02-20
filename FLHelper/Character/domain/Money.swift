//
// © 2023 Manicek
//

import Foundation

struct Money {
    let copperCoins: Int
    let silverCoins: Int
    let goldCoins: Int
    
    var total: Int {
        copperCoins + 10 * silverCoins + 100 * goldCoins
    }
}
