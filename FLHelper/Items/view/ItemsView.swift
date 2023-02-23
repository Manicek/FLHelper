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
                    case .meleeWeapon, .rangedWeapon, .shield, .bodyArmor, .helmet, .tool:
                        Text(item.name)
                        ItemPriceView(item: item)
                        Text(item.supply.name)
                        Text(item.weight.name)
                        RequiredMaterialsView(item: item)
                        Text(item.craftingRequirements.timeText)
                        RequiredTalentsView(item: item)
                        RequiredToolsAndSpecialView(item: item)
                    case .goods:
                        Text(item.name)
                        ItemPriceView(item: item)
                        Text(item.supply.name)
                        Text(item.weight.name)
                        RequiredMaterialsView(item: item)
                        Text(item.craftingRequirements.timeText)
                        RequiredTalentsView(item: item)
                        RequiredToolsAndSpecialView(item: item)
                        Text(item.effect)
                    case .miscellaneous:
                        EmptyView()
                    }
                }
            }
        }
        .padding(20)
    }
}
