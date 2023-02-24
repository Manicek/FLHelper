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
                title: ArmorType.helmet.name,
                name: helmet?.name ?? .empty,
                imageName: ArmorType.helmet.systemImageName,
                bonus: helmet?.armorRating,
                left: false
            )
            ArmorLineView(
                title: ArmorType.body.name,
                name: bodyArmor?.name ?? .empty,
                imageName: ArmorType.body.systemImageName,
                bonus: bodyArmor?.armorRating,
                left: false
            )
            ArmorLineView(
                title: Shield.name,
                name: shield?.name ?? .empty,
                imageName: Shield.systemImageName,
                bonus: shield?.bonus,
                left: true
            )
        }
    }
}

// MARK: - ArmorLineView

private struct ArmorLineView: View {
    let title: LocalizedStringKey
    let name: LocalizedStringKey
    let imageName: String
    let bonus: Int?
    let left: Bool
    
    var body: some View {
        VStack {
            Text(title)
                .playerDetailSubtitle()
            HStack {
                if left { imageAndBonusView }
                Text(name)
                    .playerDetailItemFont()
                if !left { imageAndBonusView }
            }
        }
    }
    
    private var imageAndBonusView: some View {
        ZStack {
            Image(systemName: imageName)
                .systemFontRegular(40)
            if let bonus = bonus {
                Text("\(bonus)")
                    .playerDetailItemFont()
            }
        }
    }
}
