//
// © 2023 Manicek
//

import SwiftUI

struct PlayerDetailView: View {
    let player: PlayerCharacter
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(player.name)
                .appFont(60)
                .frame(maxWidth: .infinity, alignment: .center)
            HStack(spacing: 12) {
                Text(player.kin.czName(gender: player.gender))
                    .appFont(40)
                Text(player.profession.czName(gender: player.gender))
                    .appFont(40)
            }
            .frame(maxWidth: .infinity, alignment: .center)
                
            AttributesView(max: player.maxAttributes, current: player.attributes)
            SkillsView(skills: player.skills)

//        talents: [Talent : Int],
//        inventory: [Item],
//        reputation: Int,
//        money: Int,
//        food: Die?,
//        water: Die?,
//        arrows: Die?,
//        torches: Die?,
//        animal: Animal?,
//        willpower: Int,
//        experience: Int,
//        pride: String?,
//        darkSecret: String
        }
        .padding(.horizontal, 12)
        .padding(.bottom, 24)
    }
}

// MARK: - LineView

private struct SkillsView: View {
    let skills: [Skill: Int]
    
    var body: some View {
        ForEach(Skill.allCases, id: \.self) { skill in
            HStack {
                Text(skill.czName + " (" + skill.attribute.czName + ")")
                    .appFont(24)
                if let playerSkill = skills[skill] {
                    Text("\(playerSkill)")
                        .boldAppFont(24)
                }
            }
        }
    }
}

// MARK: - AttributesView

private struct AttributesView: View {
    let max: [Attribute: Int]
    let current: [Attribute: Int]
    
    var body: some View {
        HStack {
            
        }
    }
}
