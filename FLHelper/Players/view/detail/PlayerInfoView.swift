//
// © 2023 Manicek
//

import SwiftUI

struct PlayerInfoView: View {
    let player: PlayerCharacter
    
    var body: some View {
        VStack {
            PrideSecretRepLineView(title: .characterPride, value: player.pride ?? "")
            PrideSecretRepLineView(title: .characterDarkSecret, value: player.darkSecret)
            PrideSecretRepLineView(title: .characterAge, value: "\(player.age)")
            PrideSecretRepLineView(title: .characterReputation, value: "\(player.reputation)")
        }
    }
}

// MARK: - PrideSecretRepLineView

private struct PrideSecretRepLineView: View {
    let title: LocalizedStringKey
    let value: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Text(title)
            Text(":").padding(.trailing, 4)
            Text(value)
            Spacer()
        }.playerDetailTextFont()
    }
}
