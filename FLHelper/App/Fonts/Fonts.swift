//
// © 2023 Manicek
//

import Foundation
import SwiftUI

private struct FontModifier: ViewModifier {
    let size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.custom("IMFellGreatPrimer-Regular", size: size))
    }
}

extension Text {
    func appFont(_ size: CGFloat) -> some View {
        self.modifier(FontModifier(size: size))
            .foregroundColor(Color("Text"))
    }
}
