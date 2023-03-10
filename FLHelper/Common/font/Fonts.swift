//
// © 2023 Manicek
//

import Foundation
import SwiftUI

private enum FontName: String {
    case regular = "IM_FELL_Great_Primer_Roman"
    case regularSC = "IM_FELL_Great_Primer_Roman_SC" // Small Caps
    case italic = "IM_FELL_Great_Primer_Italic"
}

private struct FontModifier: ViewModifier {
    let fontName: FontName
    let size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.custom(fontName.rawValue, size: size))
    }
}

private struct SystemFontModifier: ViewModifier {
    let size: CGFloat
    let weight: Font.Weight
    
    func body(content: Content) -> some View {
        content.font(.system(size: size, weight: weight))
    }
}

extension View {
    // MARK: - Generic

    func systemFontRegular(_ size: CGFloat, color: Color = .text) -> some View {
        modifier(SystemFontModifier(size: size, weight: .regular)).foregroundColor(color)
    }
    
    func systemFontBold(_ size: CGFloat, color: Color = .text) -> some View {
        modifier(SystemFontModifier(size: size, weight: .bold)).foregroundColor(color)
    }
    
    func appFont(_ size: CGFloat, color: Color = .text) -> some View {
        modifier(FontModifier(fontName: .regular, size: size)).foregroundColor(color)
    }
    
    func italicFont(_ size: CGFloat, color: Color = .text) -> some View {
        modifier(FontModifier(fontName: .italic, size: size)).foregroundColor(color)
    }
    
    func scFont(_ size: CGFloat, color: Color = .text) -> some View {
        modifier(FontModifier(fontName: .regularSC, size: size)).foregroundColor(color)
    }
    
    // MARK: - Player
    
    func playerDetailTitle() -> some View { appFont(60) }
    func playerDetailSubtitle() -> some View { appFont(40) }
    func playerDetailSectionTitleFont() -> some View { textCase(.uppercase).appFont(24, color: .black) }
    func playerDetailSectionSubtitleFont() -> some View {
        textCase(.uppercase).systemFontBold(12)
    }
    func playerDetailItemFont() -> some View { appFont(24) }
    func playerDetailTextFont() -> some View { appFont(18) }
    
    // MARK: - Tables
    
    func tableHeaderFont() -> some View { systemFontBold(14) }
    func tableLinkFont() -> some View { systemFontRegular(20, color: .white) }
}
