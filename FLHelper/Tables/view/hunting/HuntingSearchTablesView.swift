//
// © 2023 Manicek
//

import SwiftUI

struct HuntingSearchTablesView: View {
    
    
    
    var body: some View {
        EmptyView()
    }
}

// MARK: -

private struct SuccessTableView: View {
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 6)
    private let options = HuntingSearchSuccessResultOption.allCases
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            SuccessTableHeaderView()
                .textCase(.uppercase)
                .tableHeaderFont()
            ForEach(options.indices, id: \.self) { index in
                let option = options[index]
                SuccessColumnView(option: option)
                    .background(index % 2 == 1 ? Color.tableRowBackground : Color.clear)
            }
        }
    }
}

private struct SuccessColumnView: View {
    let option: HuntingSearchSuccessResultOption
    @State var largestHeight: CGFloat = 0
    
    var body: some View {
        VStackWrappedView(TextLeading(option.order), $largestHeight) { updateHeight($0) }
        VStackWrappedView(TextLeading(option.name), $largestHeight) { updateHeight($0) }
        VStackWrappedView(
            TextLeading(option.isCatchable ? .huntingNeedWeaponOrTrap : .huntingNeedWeapon), $largestHeight
        ) { updateHeight($0) }
        VStackWrappedView(TextLeading(option.name), $largestHeight) { updateHeight($0) }
        VStackWrappedView(TextLeading(option.meat), $largestHeight) { updateHeight($0) }
        VStackWrappedView(TextLeading(option.pelt), $largestHeight) { updateHeight($0) }
    }
    
    private func updateHeight(_ height: CGFloat) {
        if height > largestHeight {
            DispatchQueue.main.async {
                self.largestHeight = height
            }
        }
    }
}

private struct SuccessTableHeaderView: View {
    var body: some View {
        TextLeading(.tableHeaderD6)
        TextLeading(.tableHeaderAnimal)
        TextLeading(.tableHeaderDifficulty)
        TextLeading(.tableHeaderNeeds)
        TextLeading(.tableHeaderMeat)
        TextLeading(.tableHeaderPelt)
    }
}
