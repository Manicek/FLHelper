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
        case .meleeWeapon, .rangedWeapon, .shield, .bodyArmor, .helmet, .tool, .miscellaneous:
            self.columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 8)
        case .goods:
            var gridItems = Array(repeating: GridItem(.flexible(), spacing: 0), count: 8)
            gridItems.append(GridItem(.fixed(300), spacing: 0)) // Effect
            self.columns = gridItems
        }
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                ItemsHeaderView(itemType: viewModel.itemType)
                    .systemFont(24)
                ForEach(viewModel.items.indices, id: \.self) { index in
                    let item = viewModel.items[index]
                    ItemColumnsView(item: item, itemType: viewModel.itemType)
                        .background(index % 2 == 1 ? Color.tableRowBackground : Color.clear)
                }
            }
        }
        .padding(20)
    }
}

// MARK: - ItemColumnsView

private struct ItemColumnsView: View {
    let item: Item
    let itemType: ItemType
    @State var largestHeight: CGFloat = 0
    
    var body: some View {
        VStackWrappedView(TextLeading(item.name), $largestHeight) { updateHeight($0) }
        VStackWrappedView(ItemPriceView(item: item), $largestHeight) { updateHeight($0) }
        VStackWrappedView(TextLeading(item.supply.name), $largestHeight) { updateHeight($0) }
        VStackWrappedView(TextLeading(item.weight.name), $largestHeight) { updateHeight($0) }
        VStackWrappedView(RequiredMaterialsView(item: item), $largestHeight) { updateHeight($0) }
        VStackWrappedView(TextLeading(item.craftingRequirements.timeText), $largestHeight) { updateHeight($0) }
        VStackWrappedView(RequiredTalentsView(item: item), $largestHeight) { updateHeight($0) }
        VStackWrappedView(RequiredToolsAndSpecialView(item: item), $largestHeight) { updateHeight($0) }
        if case .goods = itemType {
            VStackWrappedView(TextLeading(item.effect), $largestHeight) { updateHeight($0) }
        }
    }
    
    private func updateHeight(_ height: CGFloat) {
        if height > largestHeight {
            DispatchQueue.main.async {
                self.largestHeight = height
            }
        }
    }
}

private struct VStackWrappedView<Content> : View where Content : View {
    let content: Content
    @Binding var minHeight: CGFloat
    var onUpdateHeight: (CGFloat) -> (Void)
    
    init(_ content: Content, _ minHeight: Binding<CGFloat>, onUpdateHeight: @escaping (CGFloat) -> Void) {
        self.content = content
        self._minHeight = minHeight
        self.onUpdateHeight = onUpdateHeight
    }
    
    var body: some View {
        VStack {
            Spacer()
            content
            Spacer()
        }
        .frame(minHeight: minHeight)
        .background(
            GeometryReader { geometry -> Color in
                onUpdateHeight(geometry.frame(in: .global).height)
                return .clear
            }
        )
    }
}
