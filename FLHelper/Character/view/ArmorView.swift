//
// © 2023 Manicek
//

import SwiftUI

struct ArmorView: View {
    let helmet: Armor?
    let bodyArmor: Armor?
    let shield: Shield?
    
    var body: some View {
        VStack(spacing: 0) {
            ArmorLineView(
                title: ArmorType.helmet.name,
                name: helmet?.name ?? .empty,
                imageName: ArmorType.helmet.systemImageName,
                bonus: helmet?.armorRating
            )
            ArmorLineView(
                title: ArmorType.body.name,
                name: bodyArmor?.name ?? .empty,
                imageName: ArmorType.body.systemImageName,
                bonus: bodyArmor?.armorRating
            )
            ArmorLineView(
                title: Shield.typeName,
                name: shield?.name ?? .empty,
                imageName: Shield.systemImageName,
                bonus: shield?.bonus
            )
        }
    }
}

// MARK: - ArmorLineView

private struct ArmorLineView: View {
    let title: LocalizedStringKey
    let name: LocalizedStringKey
    let imageName: SystemImageName
    let bonus: Int?
    
    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 0) {
                Text(title)
                    .playerDetailSectionSubtitleFont()
                Text(":")
                    .playerDetailSectionSubtitleFont()
                imageAndBonusView
                TextLeading(name)
                    .playerDetailItemFont()
            }
        }
    }
    
    private var imageAndBonusView: some View {
        ZStack {
            Image(imageName)
                .systemFontRegular(28)
            if let bonus = bonus {
                Text("\(bonus)")
                    .playerDetailItemFont()
                    .padding(.bottom, 8)
            }
        }
    }
}
