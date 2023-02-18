//
// © 2023 Manicek
//

import SwiftUI

struct TablesView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .meleeWeapon))) {
                MainViewLinkView(title: "Zbraně nablízko")
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .rangedWeapon))) {
                MainViewLinkView(title: "Střelné zbraně")
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .bodyArmor))) {
                MainViewLinkView(title: "Zbroje")
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .helmet))) {
                MainViewLinkView(title: "Helmy")
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .shield))) {
                MainViewLinkView(title: "Štíty")
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .tool))) {
                MainViewLinkView(title: "Nářadí")
            }.frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 44)
        .padding(.bottom, 32)
    }
}
