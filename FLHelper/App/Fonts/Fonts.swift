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
    // MARK: - Generic

    func appFont(_ size: CGFloat) -> some View {
        modifier(FontModifier(fontName: .regular, size: size, weight: .regular)).foregroundColor(Color("Text"))
    }
    
    func italicFont(_ size: CGFloat) -> some View {
        modifier(FontModifier(fontName: .italic, size: size, weight: .regular)).foregroundColor(Color("Text"))
    }
    
    func boldAppFont(_ size: CGFloat) -> some View {
        modifier(FontModifier(fontName: .regular, size: size, weight: .bold)).foregroundColor(Color("Text"))
    }
    
    // MARK: - Player
    
    func playerDetailTitle() -> some View { appFont(60) }
    func playerDetailSubtitle() -> some View { appFont(40) }
    func playerDetailSectionTitleFont() -> some View { boldAppFont(26) }
    func playerDetailSectionSubtitleFont() -> some View { boldAppFont(14) }
    func playerDetailItemFont() -> some View { appFont(24) }
}
