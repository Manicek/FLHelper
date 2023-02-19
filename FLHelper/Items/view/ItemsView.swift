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
            case .meleeWeapon, .rangedWeapon, .shield, .bodyArmor, .helmet:
                Text(.itemHeaderWeapon)
                Text(.itemHeaderPrice)
                Text(.itemHeaderSupply)
                Text(.itemHeaderWeight)
                Text(.itemHeaderRawMaterials)
                Text(.itemHeaderTime)
                Text(.itemHeaderTalent)
                Text(.itemHeaderTools)
            case .tool:
                Text(.itemHeaderTools)
                Text(.itemHeaderPrice)
                Text(.itemHeaderSupply)
                Text(.itemHeaderWeight)
                Text(.itemHeaderRawMaterials)
                Text(.itemHeaderTime)
                Text(.itemHeaderTalent)
                Text(.itemHeaderTools)
            case .goods:
                Text(.itemHeaderItem)
                Text(.itemHeaderPrice)
                Text(.itemHeaderSupply)
                Text(.itemHeaderWeight)
                Text(.itemHeaderRawMaterials)
                Text(.itemHeaderTime)
                Text(.itemHeaderTalent)
                Text(.itemHeaderTools)
                Text(.itemHeaderEffect)
            case .miscellaneous:
                EmptyView()
            }
        }
        .frame(maxWidth: .infinity)
    }
}
