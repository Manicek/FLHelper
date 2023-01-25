//
// © 2023 Manicek
//

import SwiftUI

@main
struct FLHelperApp: App {
    
    private let resolver: Resolver
    
    init() {
        resolver = Resolver.shared
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
