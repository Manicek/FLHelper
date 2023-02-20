//
// © 2023 Manicek
//

import XCTest
@testable import FL_Helper

final class PriceTests: XCTestCase {

    func testAmountAndCoinIsCalculatedCorrectlyFromPrice() {
        let goldPrice: Price = 300
        let silverPrice: Price = 120
        let copperPrice: Price = 15
        
        let returnedGoldAmountAndCoin = goldPrice.amountAndCoin
        let returnedSilverAmountAndCoin = silverPrice.amountAndCoin
        let returnedCopperAmountAndCoin = copperPrice.amountAndCoin
        
        let expectedGoldAmountAndCoin = AmountAndCoin(amount: 3, coin: .gold)
        let expectedSilverAmountAndCoin = AmountAndCoin(amount: 12, coin: .silver)
        let expectedCopperAmountAndCoin = AmountAndCoin(amount: 15, coin: .copper)
        
        XCTAssertEqual(returnedGoldAmountAndCoin, expectedGoldAmountAndCoin)
        XCTAssertEqual(returnedSilverAmountAndCoin, expectedSilverAmountAndCoin)
        XCTAssertEqual(returnedCopperAmountAndCoin, expectedCopperAmountAndCoin)
    }
}
