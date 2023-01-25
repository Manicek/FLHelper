//
// © 2023 Manicek
//

import Swinject

enum PlayersInjection {
    static func register(container: Container) {
        container.register(PlayersRepository.self) { _ in
            return FLPlayersRepository()
        }.inObjectScope(.container)
        
        container.register(GetPlayerCharactersInteractor.self) { _  in
            return GetPlayerCharactersInteractor()
        }.inObjectScope(.container)
    }
}
