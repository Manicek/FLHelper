//
// © 2023 Manicek
//

import SwiftUI

@main
struct FLHelperApp: App {
    private let resolver: Resolver
    private let persistenceController = PersistenceController.shared
    
    init() {
        resolver = Resolver.shared
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
