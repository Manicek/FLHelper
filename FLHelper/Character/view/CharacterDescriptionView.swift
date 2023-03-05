//
// © 2023 Manicek
//

import SwiftUI

struct CharacterDescriptionView: View {
    let character: Character
    
    var body: some View {
        VStack {
            TextLeading(.characterDescription)
                .playerDetailSectionTitleFont()
            LineView(title: .characterBody, value: character.characterDescription.body)
            LineView(title: .characterFace, value: character.characterDescription.face)
            LineView(title: .characterClothing, value: character.characterDescription.clothing)
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
