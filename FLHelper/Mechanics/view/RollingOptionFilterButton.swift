//
// © 2023 Manicek
//

import SwiftUI

struct RollingOptionFilterButton: View {
    @Binding var isSelected: Bool
    let title: LocalizedStringKey
    let action: Action
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .foregroundColor(.blue)
                Text(title)
                    .tableLinkFont()
            }
            .frame(height: 48)
            .opacity(isSelected ? 1 : 0.4)
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}
