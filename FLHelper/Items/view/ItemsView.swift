//
// © 2023 Manicek
//

import SwiftUI

struct ItemsView: View {
    @StateObject var viewModel: ItemsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            ItemsHeaderView()
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
    
    var body: some View {
        EmptyView()
    }
}
