//
// © 2023 Manicek
//

import SwiftUI

struct PlayerHeaderView: View {
    let player: PlayerCharacter
    
    var body: some View {
        VStack {
            Text(player.name)
                .playerDetailTitle()
                .frame(maxWidth: .infinity, alignment: .center)
            HStack(spacing: 12) {
                Text(player.kin.name(gender: player.gender)).playerDetailSubtitle()
                Text(player.profession.name(gender: player.gender)).playerDetailSubtitle()
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}
