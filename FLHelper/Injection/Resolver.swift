//
// © 2023 Manicek
//

import Swinject

class Resolver {
    static let shared = Resolver()
    
    private init() {
        container = Container()
        
        PlayersInjection.register(container: container)
        ItemsInjection.register(container: container)
    }
    
    private var container: Container
    
    func resolve<T>(_ type: T.Type) -> T {
        container.resolve(T.self)!
    }
}
