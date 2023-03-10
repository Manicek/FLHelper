//
// © 2023 Manicek
//

import SwiftUI

struct TextLeading: View {
    var string: (any StringProtocol)?
    var key: LocalizedStringKey = .empty
    
    init<S>(_ content: S) where S : StringProtocol {
        self.string = content
    }
    
    init(_ key: LocalizedStringKey) {
        self.key = key
    }
    
    init(_ integer: Int) {
        self.string = "\(integer)"
    }
    
    init(_ double: Double) {
        self.string = "\(double)"
    }
    
    var body: some View {
        if let string = string {
            HStack {
                Text(string)
                Spacer()
            }
        } else {
            HStack {
                Text(key)
                Spacer()
            }
        }
    }
}
