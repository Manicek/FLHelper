//
// © 2023 Manicek
//

import SwiftUI

struct ItemsView: View {
    @StateObject var viewModel: ItemsViewModel
    
    let columns: [GridItem]
    
    init(viewModel: ItemsViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        switch viewModel.itemType {
        case .meleeWeapon, .rangedWeapon, .shield, .bodyArmor, .helmet, .tool:
            self.columns = Array(repeating: GridItem(.flexible()), count: 8)
        case .goods:
            self.columns = Array(repeating: GridItem(.flexible()), count: 9)
        case .miscellaneous:
            self.columns = []
        }
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ItemsHeaderView(itemType: viewModel.itemType)
                    .systemFont(24)
                ForEach(viewModel.items) { item in
                    switch viewModel.itemType {
                    case .meleeWeapon, .rangedWeapon, .shield, .bodyArmor, .helmet:
                        Text(item.name)
                        if item.price.price == 0 {
                            Text(.empty)
                        } else {
                            HStack(spacing: 2) {
                                Text(item.price.amountAndCoin.amount)
                                Text(item.price.amountAndCoin.coin.name(count: item.price.amountAndCoin.amount))
                            }
                        }
                        Text(item.supply.name)
                        Text(item.weight.name)
                        Text(.itemHeaderRawMaterials)
                        Text(item.craftingRequirements.timeText)
                        switch item.craftingRequirements.talents.count {
                        case 0:
                            Text(.empty)
                        case 1:
                            Text(item.craftingRequirements.talents[0].name)
                        case 2:
                            HStack(spacing: 0) {
                                Text(item.craftingRequirements.talents[0].name)
                                Text(", ")
                                Text(item.craftingRequirements.talents[1].name)
                            }
                        default:
                            HStack(spacing: 0) {
                                Text(item.craftingRequirements.talents[0].name)
                                Text(", ")
                                Text(item.craftingRequirements.talents[1].name)
                                Text(", ...")
                            }
                        }
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
}
