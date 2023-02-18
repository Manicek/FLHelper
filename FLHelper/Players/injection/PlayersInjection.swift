//
// © 2023 Manicek
//

import Swinject

enum PlayersInjection {
    static func register(container: Container) {
        container.register(PlayersRepository.self) { _ in
            FLPlayersRepository()
        }.inObjectScope(.container)
        
        container.register(GetPlayerCharactersInteractor.self) { _  in
            GetPlayerCharactersInteractor()
        }.inObjectScope(.container)
    }
}
