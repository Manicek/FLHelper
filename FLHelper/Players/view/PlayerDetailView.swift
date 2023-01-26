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
                
            AttributesView(max: player.maxAttributes, current: player.attributes)
                .fixedSize(horizontal: true, vertical: true)
                .padding(.bottom, 12)
            SkillsView(skills: player.skills)
                .fixedSize(horizontal: true, vertical: true)

//            var isSleepy: Bool = false
//            var isThirsty: Bool = false
//            var isHungry: Bool = false
//            var isCold: Bool = false
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
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Dovednosti".uppercased()).playerDetailSectionTitleFont()
                Spacer()
                Text("Úroveň".uppercased()).playerDetailSectionSubtitleFont()
            }
            ForEach(Skill.allCases, id: \.self) { skill in
                HStack(alignment: .bottom, spacing: 0) {
                    Text(skill.czName).playerDetailItemFont()
                    Text(" (" + skill.attribute.czName.uppercased() + ") ").appFont(16)
                        .padding(.trailing, 8)
                    Spacer()
                    if let playerSkill = skills[skill] {
                        Text("\(playerSkill)").boldAppFont(24)
                            .padding(.horizontal, 4)
                    }
                }.frame(maxWidth: .infinity)
            }
        }
    }
}

// MARK: - AttributesView

private struct AttributesView: View {
    let max: [Attribute: Int]
    let current: [Attribute: Int]
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Vlastnosti".uppercased()).playerDetailSectionTitleFont()
            HStack {
                VStack(alignment: .leading) {
                    ForEach(Attribute.allCases, id: \.self) { attribute in
                        attributeNameView(attribute)
                    }
                }
                .fixedSize()
                VStack {
                    ForEach(Attribute.allCases, id: \.self) { attribute in
                        attributeValueView(attribute)
                    }
                }
                VStack {
                    ForEach(Attribute.allCases, id: \.self) { attribute in
                        attributeHeartsView(attribute)
                    }
                }
            }
        }
    }
    
    private func attributeNameView(_ attribute: Attribute) -> some View {
        HStack {
            Text(attribute.czName).playerDetailItemFont()
            Spacer()
        }
    }
    
    private func attributeValueView(_ attribute: Attribute) -> some View {
        HStack {
            Text("\(current[attribute] ?? 2)").boldAppFont(24).padding(.horizontal, 4)
        }
    }
    
    private func attributeHeartsView(_ attribute: Attribute) -> some View {
        HStack(alignment: .bottom, spacing: 0) {
            ForEach((1...(max[attribute] ?? 2)), id: \.self) { value in
                if value <= (current[attribute] ?? 0) {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }
            Spacer()
        }
        .frame(maxHeight: .infinity)
    }
}
