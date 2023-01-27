//
// © 2023 Manicek
//

import SwiftUI

struct SkillsView: View {
    let skills: [Skill: Int]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("dovednosti").playerDetailSectionTitleFont()
                Spacer()
                Text("úroveň".uppercased()).playerDetailSectionSubtitleFont()
            }
            ForEach(Skill.allCases, id: \.self) { skill in
                HStack(alignment: .bottom, spacing: 0) {
                    Text(skill.czName).playerDetailItemFont()
                    Text(" (" + skill.attribute.czName.lowercased() + ") ").scFont(18)
                        .padding(.trailing, 8)
                    Spacer()
                    if let playerSkill = skills[skill] {
                        Text("\(playerSkill)").playerDetailItemFont().padding(.horizontal, 8)
                    }
                }.frame(maxWidth: .infinity)
            }
        }
    }
}
