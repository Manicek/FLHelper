//
// © 2023 Manicek
//

import SwiftUI

struct WillpowerView: View {
    let willpower: Int
    
    var body: some View {
        HStack {
            Text(.characterWillpower)
                .playerDetailSectionSubtitleFont()
            ForEach(0..<10, id: \.self) { counter in
                if willpower > counter {
                    Image(systemName: "circle.fill")
                } else {
                    Image(systemName: "circle")
                }
            }.systemFontRegular(28)
        }
    }
}
