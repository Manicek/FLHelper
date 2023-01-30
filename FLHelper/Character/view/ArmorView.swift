//
// © 2023 Manicek
//

import SwiftUI

struct ArmorView: View {
    let helmet: Armor?
    let bodyArmor: Armor?
    let shield: Shield?
    
    var body: some View {
        VStack {
            ArmorLineView(
                title: ArmorType.helmet.czName,
                name: helmet?.name,
                imageName: ArmorType.helmet.systemImageName,
                bonus: helmet?.armorRating,
                left: false
            )
            ArmorLineView(
                title: ArmorType.body.czName,
                name: bodyArmor?.name,
                imageName: ArmorType.body.systemImageName,
                bonus: bodyArmor?.armorRating,
                left: false
            )
            ArmorLineView(
                title: Shield.czName,
                name: shield?.name,
                imageName: Shield.systemImageName,
                bonus: shield?.bonus,
                left: true
            )
        }
    }
}

// MARK: - ArmorLineView

private struct ArmorLineView: View {
    let title: String
    let name: String?
    let imageName: String
    let bonus: Int?
    let left: Bool
    
    var body: some View {
        VStack {
            Text(title).playerDetailSubtitle()
            HStack {
                if left { imageAndBonusView }
                Text(name ?? "-").playerDetailItemFont()
                if !left { imageAndBonusView }
            }
        }
    }
    
    private var imageAndBonusView: some View {
        ZStack {
            Image(systemName: imageName).font(.system(size: 40))
            if let bonus = bonus {
                Text("\(bonus)").playerDetailItemFont()
            }
        }
    }
}
