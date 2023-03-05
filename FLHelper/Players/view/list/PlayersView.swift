//
// © 2023 Manicek
//

import SwiftUI

struct PlayersView: View {
    @StateObject var viewModel: PlayersViewModel
    
    var body: some View {
        ForEach(viewModel.playerCharacters, id: \.name) { character in
            ScrollView {
                VStack {
                    NavigationLink(
                        destination: PlayerDetailView(viewModel: PlayerDetailViewModel(player: character))
                    ) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.accentColor)
                            HStack {
                                Text(character.name)
                                    .appFont(32)
                                Image(character.gender.iconName)
                            }.frame(maxWidth: .infinity)
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}
