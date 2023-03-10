//
// © 2023 Manicek
//

import SwiftUI

struct VStackWrappedView<Content> : View where Content : View {
    let content: Content
    @Binding var minHeight: CGFloat
    var onUpdateHeight: (CGFloat) -> (Void)
    
    init(_ content: Content, _ minHeight: Binding<CGFloat>, onUpdateHeight: @escaping (CGFloat) -> Void) {
        self.content = content
        self._minHeight = minHeight
        self.onUpdateHeight = onUpdateHeight
    }
    
    var body: some View {
        VStack {
            Spacer()
            content
            Spacer()
        }
        .frame(minHeight: minHeight)
        .background(
            GeometryReader { geometry -> Color in
                onUpdateHeight(geometry.frame(in: .global).height)
                return .clear
            }
        )
    }
}
