//
// © 2023 Manicek
//

import SwiftUI

struct AlertAction: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let style: AlertActionStyle
    let action: Action
}

// MARK: - AlertActionStyle

enum AlertActionStyle {
    case normal
    case destructive
    
    var color: Color {
        switch self {
        case .normal:
            return .accentColor
        case .destructive:
            return .red
        }
    }
    
    var textColor: Color {
        switch self {
        case .normal:
            return .text
        case .destructive:
            return .white
        }
    }
    
    var font: Font {
        switch self {
        case .normal:
            return .system(size: 16, weight: .regular)
        case .destructive:
            return .system(size: 16, weight: .bold)
        }
    }
}
