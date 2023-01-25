//
// © 2023 Manicek
//

import Foundation
import SwiftUI

struct MainViewLinkView: View {
    let title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.accentColor)
            Text(title).appFont(48)
        }
    }
}
