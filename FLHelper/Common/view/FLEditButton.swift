//
// © 2023 Manicek
//

import SwiftUI

struct FLEditButton: View {
    @Environment(\.isEditing) var isEditing: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.accentColor)
                Text(isEditing ? .commonDone : .commonEdit)
                    .playerDetailSectionSubtitleFont()
                    .padding(24)
            }
        }
        .fixedSize()
    }
}

