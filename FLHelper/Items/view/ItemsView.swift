//
// © 2023 Manicek
//

import SwiftUI

struct ItemsView: View {
    @StateObject var viewModel: ItemsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            ItemsHeaderView(itemType: viewModel.itemType)
            ForEach(viewModel.items) { item in
                ItemRowView(item: item)
                    .frame(maxWidth: .infinity)
            }
        }
        .padding(20)
    }
}

// MARK: - ItemRowView

private struct ItemRowView: View {
    let item: Item
    
    var body: some View {
        HStack {
            Text(item.name)
        }
    }
}

// MARK: - ItemsHeaderView

private struct ItemsHeaderView: View {
    let itemType: ItemType
    
    var body: some View {
        HStack {
            switch itemType {
            case .meleeWeapon, .rangedWeapon:
                EmptyView()
            case .bodyArmor:
                EmptyView()
            case .helmet:
                EmptyView()
            case .shield:
                EmptyView()
            case .tool:
                EmptyView()
            case .goods:
                Text("Předmět")
                Text("Cena")
                Text("Dostupnost")
                Text("Váha")
                Text("Suroviny")
                Text("Čas")
                Text("Talent")
                Text("Nářadí")
                Text("Účinek")
            case .miscellaneous:
                EmptyView()
            }
        }
    }
}
