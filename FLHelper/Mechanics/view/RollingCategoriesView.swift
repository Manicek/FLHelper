//
// © 2023 Manicek
//

import SwiftUI

struct RollingCategoriesView: View {
    
    var body: some View {
        VStack {
            NavigationLink(destination: RollingOptionsView(category: .travelling)) {
                MainViewLinkView(title: .rollingCategoryTravelling)
            }
            NavigationLink(destination: RollingOptionsView(category: .combat)) {
                MainViewLinkView(title: .rollingCategoryCombat)
            }
        }.padding(.horizontal, 20)
    }
}
