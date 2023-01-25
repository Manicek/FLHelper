//
// © 2023 Manicek
//

import Swinject

class Resolver {
    static let shared = Resolver()
    
    private init() {
        container = Self.buildContainer()
    }
    
    private var container: Container
    
    func resolve<T>(_ type: T.Type) -> T {
        container.resolve(T.self)!
    }
    
    private static func buildContainer() -> Container {
        let container = Container()
        
        container.register(GetPlayerCharactersInteractor.self) { _  in
            return GetPlayerCharactersInteractor()
        }.inObjectScope(.container)
        
        container.register(PlayersRepository.self) { _ in
            return PlayersRepository()
        }.inObjectScope(.container)
        
        return container
    }
}
