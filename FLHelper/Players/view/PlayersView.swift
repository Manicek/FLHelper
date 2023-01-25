//
// © 2023 Manicek
//

import SwiftUI

struct PlayersView: View {
    @StateObject var viewModel: PlayersViewModel
    
    var body: some View {
        ForEach(viewModel.playerCharacters, id: \.name) { character in
            VStack {
                Text(character.name)
                Text(character.gender == .male ? character.kin.czMale : character.kin.czFemale)
            }
        }
    }
}
