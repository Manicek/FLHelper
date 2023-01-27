//
// © 2023 Manicek
//

import SwiftUI

struct PlayerDetailView: View {
    let player: PlayerCharacter
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(player.name)
                .playerDetailTitle()
                .frame(maxWidth: .infinity, alignment: .center)
            HStack(spacing: 12) {
                Text(player.kin.czName(gender: player.gender)).playerDetailSubtitle()
                Text(player.profession.czName(gender: player.gender)).playerDetailSubtitle()
                Text("\(player.age) let").playerDetailSubtitle()
            }
            .frame(maxWidth: .infinity, alignment: .center)
                
            HStack(spacing: 20) {
                AttributesView(max: player.maxAttributes, current: player.attributes)
                    .fixedSize(horizontal: true, vertical: true)
                    .padding(.bottom, 12)
                VStack {
                    PrideSecretRepLineView(title: "Pýcha", value: player.pride ?? "")
                    PrideSecretRepLineView(title: "Temné tajemstvé", value: player.darkSecret)
                    PrideSecretRepLineView(title: "Reputace", value: "\(player.reputation)")
                }
                TalentsView(talents: player.talents)
            }
            
                
            SkillsView(skills: player.skills)
                .fixedSize(horizontal: true, vertical: true)

//            var isSleepy: Bool = false
//            var isThirsty: Bool = false
//            var isHungry: Bool = false
//            var isCold: Bool = false
//        talents: [Talent : Int],
//        inventory: [Item],
//        money: Int,
//        food: Die?,
//        water: Die?,
//        arrows: Die?,
//        torches: Die?,
//        animal: Animal?,
//        willpower: Int,
//        experience: Int,
        }
        .padding(.horizontal, 12)
        .padding(.bottom, 24)
    }
}

// MARK: - PrideSecretRepLineView

private struct PrideSecretRepLineView: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text(title + ":").appFont(18)
            Text(value).appFont(18)
            Spacer()
        }
    }
}
