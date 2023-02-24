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
        HStack {
            Text(.characterWillpower)
                .playerDetailSectionTitleFont()
            ForEach(0..<Constants.maxWillPower, id: \.self) { counter in
                Image(willpower > counter ? .circleFilled : .circle)
            }.systemFontRegular(20)
        }
    }
}
