//
// © 2023 Manicek
//

import SwiftUI

extension Text {
    init(_ integer: Int) {
        self.init(verbatim: "\(integer)")
    }
    
    init(_ double: Double) {
        self.init(verbatim: "\(double)")
    }
}
