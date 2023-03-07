//
// © 2023 Manicek
//

import SwiftUI

struct MinusButton: View {
    var size: CGFloat?
    var action: Action
    
    init(size: CGFloat?, action: @escaping Action) {
        self.size = size
        self.action = action
    }
    
    init(action: @escaping Action) {
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Image(.minusCircle)
                .systemFontRegular(size ?? 16)
        }
    }
}
