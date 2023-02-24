//
// © 2023 Manicek
//

import SwiftUI

struct PlayerDetailView: View {
    let player: PlayerCharacter
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            PlayerHeaderView(player: player)
                
            HStack(spacing: 20) {
                AttributesView(max: player.maxAttributes, current: player.attributes)
                    .fixedSize(horizontal: true, vertical: true)
                    .padding(.bottom, 12)
                StatesView(states: player.states)
                VStack {
                    PrideSecretRepLineView(title: .characterPride, value: player.pride ?? "")
                    PrideSecretRepLineView(title: .characterDarkSecret, value: player.darkSecret)
                    HStack {
                        PrideSecretRepLineView(title: .characterReputation, value: "\(player.reputation)")
                            .frame(maxWidth: .infinity)
                        PrideSecretRepLineView(title: .characterAge, value: "\(player.age)")
                            .frame(maxWidth: .infinity)
                    }
                }
                ConsumablesView(consumables: player.consumables)
                TalentsView(talents: player.talents)
            }
            
            HStack {
                SkillsView(skills: player.skills)
                    .fixedSize(horizontal: true, vertical: true)
                VStack {
                    Spacer()
                    WillpowerView(willpower: player.willpower)
                }
                
                Spacer()
                ExperienceView(experience: player.experience)
            }

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
