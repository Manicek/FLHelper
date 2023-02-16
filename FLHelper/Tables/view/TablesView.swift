//
// © 2023 Manicek
//

import SwiftUI

struct TablesView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            NavigationLink(destination: ItemsView(type: .weapon)) {
                MainViewLinkView(title: "Zbraně")
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(type: .armor)) {
                MainViewLinkView(title: "Zbroje a helmy")
            }.frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 44)
        .padding(.bottom, 32)
    }
}
