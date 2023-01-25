//
// © 2023 Manicek
//

import Foundation
import SwiftUI

private enum FontName: String {
    case regular = "IM_FELL_Great_Primer_Roman"
    case italic = "IM_FELL_Great_Primer_Italic"
}

private struct FontModifier: ViewModifier {
    let fontName: FontName
    let size: CGFloat
    let weight: Font.Weight
    
    func body(content: Content) -> some View {
        content
            .font(.custom(fontName.rawValue, size: size).weight(weight))
    }
}

extension Text {
    func appFont(_ size: CGFloat) -> some View {
        self.modifier(FontModifier(fontName: .regular, size: size, weight: .regular))
            .foregroundColor(Color("Text"))
    }
    
    func italicFont(_ size: CGFloat) -> some View {
        self.modifier(FontModifier(fontName: .italic, size: size, weight: .regular))
            .foregroundColor(Color("Text"))
    }
    
    func boldAppFont(_ size: CGFloat) -> some View {
        self.modifier(FontModifier(fontName: .regular, size: size, weight: .bold))
            .foregroundColor(Color("Text"))
    }
}
