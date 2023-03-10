//
// © 2023 Manicek
//

import SwiftUI

struct ShoppingView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .meleeWeapon))) {
                MainViewLinkView(title: ItemType.meleeWeapon.tableName)
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .rangedWeapon))) {
                MainViewLinkView(title: ItemType.rangedWeapon.tableName)
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .bodyArmor))) {
                MainViewLinkView(title: ItemType.bodyArmor.tableName)
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .helmet))) {
                MainViewLinkView(title: ItemType.helmet.tableName)
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .shield))) {
                MainViewLinkView(title: ItemType.shield.tableName)
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .tool))) {
                MainViewLinkView(title: ItemType.tool.tableName)
            }.frame(maxWidth: .infinity)
            NavigationLink(destination: ItemsView(viewModel: ItemsViewModel(type: .goods))) {
                MainViewLinkView(title: ItemType.goods.tableName)
            }.frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 44)
        .padding(.bottom, 32)
    }
}
