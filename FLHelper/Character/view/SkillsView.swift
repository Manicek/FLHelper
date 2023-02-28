//
// © 2023 Manicek
//

import SwiftUI

struct SkillsView: View {
    let skills: [Skill: Int]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(.skills)
                    .playerDetailSectionTitleFont()
                Spacer()
                Text(.characterLevel)
                    .playerDetailSectionSubtitleFont()
            }
            Divider()
            ForEach(Skill.allCases, id: \.self) { skill in
                HStack(alignment: .bottom, spacing: 0) {
                    Text(skill.name)
                        .playerDetailItemFont()
                    Text(" (")
                        .scFont(18)
                    Text(skill.attribute.name)
                        .scFont(18)
                        .textCase(.lowercase)
                    Text(") ")
                        .scFont(18)
                        .padding(.trailing, 8)
                    Spacer()
                    Divider()
                    if let playerSkill = skills[skill] {
                        Text("\(playerSkill)")
                            .playerDetailItemFont()
                            .padding(.horizontal, 8)
                            .frame(minWidth: 30, maxWidth: 30)
                    } else {
                        Text("")
                            .padding(.horizontal, 8)
                            .frame(minWidth: 30, maxWidth: 30)
                    }
                    Divider()
                }.frame(maxWidth: .infinity)
                Divider()
            }
        }
    }
}
