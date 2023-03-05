//
// © 2023 Manicek
//

import SwiftUI

enum SystemImageName: String {
    case square = "square"
    case square6 = "6.square"
    case square8 = "8.square"
    case square10 = "10.square"
    case square12 = "12.square"
    case circle = "circle"
    case circleFilled = "circle.fill"
    case gearShapeFilled = "gearshape.fill"
    case heart = "heart"
    case heartFilled = "heart.fill"
    case seal = "seal"
    case shield = "shield"
    case tshirt = "tshirt"
    case moonStars = "moon.stars"
    case cupAndSaucer = "cup.and.saucer"
    case forkKnifeCircle = "fork.knife.circle"
    case snowflake = "snowflake"
    case minusCircle = "minus.circle"
    case plusCircle = "plus.circle"
}

extension Image {
    init(_ systemImageName: SystemImageName) {
        self.init(systemName: systemImageName.rawValue)
    }
}
