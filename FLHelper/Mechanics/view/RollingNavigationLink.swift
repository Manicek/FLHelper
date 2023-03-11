//
// © 2023 Manicek
//

import SwiftUI

struct RollingNavigationLink<Destination>: View where Destination: View {
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination.padding(40)) {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .foregroundColor(.accentColor)
                Text(.tableLink)
                    .tableLinkFont()
            }
            .padding(8)
        }
    }
}
