//
// © 2023 Manicek
//

import SwiftUI

private struct IsEditingEnvironmentKey: EnvironmentKey {
    static let defaultValue: Bool = false
}


extension EnvironmentValues {
    var isEditing: Bool {
        get { self[IsEditingEnvironmentKey.self] }
        set { self[IsEditingEnvironmentKey.self] = newValue }
    }
}
