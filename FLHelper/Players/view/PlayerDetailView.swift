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
                Text(player.kin.name(gender: player.gender)).playerDetailSubtitle()
                Text(player.profession.name(gender: player.gender)).playerDetailSubtitle()
            }
            .frame(maxWidth: .infinity, alignment: .center)
                
            HStack(spacing: 20) {
                AttributesView(max: player.maxAttributes, current: player.attributes)
                    .fixedSize(horizontal: true, vertical: true)
                    .padding(.bottom, 12)
                StatesView(states: player.states)
                VStack {
                    PrideSecretRepLineView(title: .characterPride, value: player.pride ?? "")
                    PrideSecretRepLineView(title: .characterDarkSecret, value: player.darkSecret)
                    PrideSecretRepLineView(title: .characterReputation, value: "\(player.reputation)")
                    PrideSecretRepLineView(title: .characterAge, value: "\(player.age)")
                }
                ConsumablesView(consumables: player.consumables)
                TalentsView(talents: player.talents)
            }
                
            SkillsView(skills: player.skills)
                .fixedSize(horizontal: true, vertical: true)

//        inventory: [Item],
//        money: Int,
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
    let title: LocalizedStringKey
    let value: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Text(title)
            Text(":").padding(.trailing, 4)
            Text(value)
            Spacer()
        }.playerDetailTextFont()
    }
}
