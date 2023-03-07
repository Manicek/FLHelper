//
// © 2023 Manicek
//

import SwiftUI

struct CharacterVisualsView: View {
    let character: Character
    
    var body: some View {
        VStack {
            TextLeading(.characterVisuals)
                .playerDetailSectionTitleFont()
            LineView(title: .characterBody, value: character.characterVisuals.body)
            LineView(title: .characterFace, value: character.characterVisuals.face)
            LineView(title: .characterClothing, value: character.characterVisuals.clothing)
        }
    }
}

// MARK: - LineView

private struct LineView: View {
    let title: LocalizedStringKey
    let value: String?
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Text(title)
            Text(":").padding(.trailing, 4)
            Text(value ?? "")
            Spacer()
        }.playerDetailTextFont()
    }
}
