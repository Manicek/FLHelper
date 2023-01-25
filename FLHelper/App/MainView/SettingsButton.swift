//
// © 2023 Manicek
//

import SwiftUI

struct SettingsImageView: View {
    enum Constants {
        static let size: CGFloat = 60
    }
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .font(.system(size: Constants.size))
        .frame(width: Constants.size, height: Constants.size)
    }
}
