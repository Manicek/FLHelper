//
// © 2023 Manicek
//

import SwiftUI

struct RollingOptionsView: View {
    @StateObject var viewModel: RollingOptionsViewModel
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 7)
    
    var body: some View {
        VStack {
            HStack {
                RollingOptionFilterButton(
                    isSelected: $viewModel.showCombatOptions,
                    title: .rollingCategoryCombat
                ) {
                    viewModel.toggleCombatOptions()
                }
                
                RollingOptionFilterButton(
                    isSelected: $viewModel.showTravellingOptions,
                    title: .rollingCategoryTravelling
                ) {
                    viewModel.toggleTravellingOptions()
                }
                
                Spacer()
            }
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 0) {
                    RollingOptionsHeaderView()
                        .textCase(.uppercase)
                        .tableHeaderFont()
                    
                    ForEach(viewModel.options, id: \.self) { rollingOption in
                        RollingOptionColumnsView(option: rollingOption)
                    }
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

// MARK: - RollingOptionColumnsView

private struct RollingOptionColumnsView: View {
    let option: RollingOption
    @State var largestHeight: CGFloat = 0
    
    var body: some View {
        VStackWrappedView(TextLeading(option.name), $largestHeight) { updateHeight($0) }
        VStackWrappedView(TextLeading(option.skill?.name ?? .empty), $largestHeight) { updateHeight($0) }
        VStackWrappedView(RelatedTalentsView(option: option), $largestHeight) { updateHeight($0) }
        VStackWrappedView(TextLeading(option.requirements), $largestHeight) { updateHeight($0) }
        VStackWrappedView(option.bonusesView, $largestHeight) { updateHeight($0) }
        VStackWrappedView(option.successResultView, $largestHeight) { updateHeight($0) }
        VStackWrappedView(option.failureResultView, $largestHeight) { updateHeight($0) }
    }
    
    private func updateHeight(_ height: CGFloat) {
        if height > largestHeight {
            DispatchQueue.main.async {
                self.largestHeight = height
            }
        }
    }
}
