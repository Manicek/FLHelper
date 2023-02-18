//
// © 2023 Manicek
//

import Swinject

enum ItemsInjection {
    static func register(container: Container) {
        container.register(GetDefaultItemsInteractor.self) { _  in
            GetDefaultItemsInteractor()
        }.inObjectScope(.container)
    }
}
