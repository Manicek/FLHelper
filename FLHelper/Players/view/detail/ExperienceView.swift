//
// © 2023 Manicek
//

import SwiftUI

struct ExperienceView: View {
    enum Constants {
        static let maxExperience = 25
    }
    
    let experience: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            Text(.characterExperience)
                .playerDetailSectionTitleFont()
            ForEach(0..<12, id: \.self) { counter in
                HStack {
                    Image(experience > (2 * counter) ? .circleFilled : .circle)
                    Image(experience > (2 * counter + 1) ? .circleFilled : .circle)
                }
            }
            Image(experience == Constants.maxExperience ? .circleFilled : .circle)
        }.systemFontRegular(20)
    }
}
