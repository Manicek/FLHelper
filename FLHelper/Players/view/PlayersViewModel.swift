//
// © 2023 Manicek
//

import SwiftUI
import Swinject

class PlayersViewModel: ObservableObject {
    @Published var playerCharacters: [PlayerCharacter] = []
    
    @Inject
    private var getPlayerCharacters: GetPlayerCharactersInteractor
    
    init() {
        playerCharacters = getPlayerCharacters()
    }
}
