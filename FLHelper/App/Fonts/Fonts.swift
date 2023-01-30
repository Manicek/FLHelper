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

extension Text {
    // MARK: - Generic

    func appFont(_ size: CGFloat) -> some View {
        modifier(FontModifier(fontName: .regular, size: size)).foregroundColor(Color("Text"))
    }
    
    func italicFont(_ size: CGFloat) -> some View {
        modifier(FontModifier(fontName: .italic, size: size)).foregroundColor(Color("Text"))
    }
    
    func scFont(_ size: CGFloat) -> some View {
        modifier(FontModifier(fontName: .regularSC, size: size)).foregroundColor(Color("Text"))
    }
    
    // MARK: - Player
    
    func playerDetailTitle() -> some View { appFont(60) }
    func playerDetailSubtitle() -> some View { appFont(40) }
    func playerDetailSectionTitleFont() -> some View { scFont(26) }
    func playerDetailSectionSubtitleFont() -> some View { appFont(16) }
    func playerDetailItemFont() -> some View { appFont(24) }
    func playerDetailTextFont() -> some View { appFont(18) }
}
