//
// © 2023 Manicek
//

import SwiftUI

struct WillpowerView: View {
    let willpower: Int
    
    var body: some View {
        HStack {
            Text("Vůle").playerDetailSectionSubtitleFont()
            ForEach(0..<10, id: \.self) { counter in
                if willpower > counter {
                    Image(systemName: "circle.fill")
                } else {
                    Image(systemName: "circle")
                }
            }.font(.system(size: 28))
        }
    }
}
