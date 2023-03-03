//
// © 2023 Manicek
//

import SwiftUI

struct WillpowerView: View {
    enum Constants {
        static let maxWillPower = 10
    }
    
    let willpower: Int
    
    var body: some View {
        VStack {
            Text(.characterWillpower)
                .playerDetailSectionTitleFont()
            HStack(spacing: 1) {
                ForEach(0..<Constants.maxWillPower, id: \.self) { counter in
                    Image(willpower > counter ? .circleFilled : .circle)
                }.systemFontRegular(20)
            }
        }
    }
}
