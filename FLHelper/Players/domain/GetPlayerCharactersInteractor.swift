//
// © 2023 Manicek
//

import Foundation

class GetPlayerCharactersInteractor {
    @Inject private var repository: PlayersRepository
    
    func callAsFunction() -> [PlayerCharacter] {
        repository.getPlayerCharacters()
    }
}
