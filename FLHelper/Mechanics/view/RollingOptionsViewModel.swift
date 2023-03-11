//
// © 2023 Manicek
//

import Foundation

class RollingOptionsViewModel: ObservableObject {
    @Published var options: [RollingOption] = RollingOption.allCases
    @Published var showCombatOptions = true
    @Published var showTravellingOptions = true
    
    func toggleCombatOptions() {
        showCombatOptions.toggle()
        filterOptions()
    }
    
    func toggleTravellingOptions() {
        showTravellingOptions.toggle()
        filterOptions()
    }
    
    private func filterOptions() {
        options = RollingOption.allCases.filter {
            switch $0.category {
            case .combat:
                return showCombatOptions
            case .travelling:
                return showTravellingOptions
            }
        }
    }
}
