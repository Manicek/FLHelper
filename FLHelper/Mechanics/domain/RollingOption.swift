//
// © 2023 Manicek
//

import SwiftUI

enum RollingOption: CaseIterable {
    case huntingSearch
    case huntingByTrap
    case huntingByShooting
    
    var category: RollingCategory {
        switch self {
        case .huntingSearch, .huntingByTrap, .huntingByShooting:
            return .travelling
        }
    }
    
    var name: LocalizedStringKey {
        switch self {
        case .huntingSearch: return .huntingSearch
        case .huntingByTrap: return .huntingByTrap
        case .huntingByShooting: return .huntingByShooting
        }
    }
    
    var skill: Skill? {
        switch self {
        case .huntingSearch: return .survival
        case .huntingByTrap: return .survival
        case .huntingByShooting: return .marksmanship
        }
    }
    
    var relatedTalents: [Talent] {
        switch self {
        case .huntingSearch: return [.pathOfTheForest, .masterOfTheHunt, .huntingInstincts]
        case .huntingByTrap: return [.pathOfTheForest, .masterOfTheHunt]
        case .huntingByShooting: return [.pathOfTheForest, .masterOfTheHunt]
        }
    }
    
    var requirements: LocalizedStringKey {
        switch self {
        case .huntingSearch: return .empty
        case .huntingByTrap: return .huntingByTrapRequirement
        case .huntingByShooting: return .huntingByShootingRequirement
        }
    }
    
    var bonusesView: some View {
        VStack {
            switch self {
            case .huntingSearch:
                TextLeading(.empty)
            case .huntingByTrap:
                TextLeading(.empty)
            case .huntingByShooting:
                TextLeading(.empty)
            }
        }
    }
    
    @ViewBuilder
    var successResultView: some View {
        switch self {
        case .huntingSearch:
            RollingNavigationLink(destination: HuntingSearchTablesView())
        case .huntingByTrap:
            TextLeading(.empty)
        case .huntingByShooting:
            TextLeading(.empty)
        }
    }
    
    var failureResultView: some View {
        TextLeading(.empty)
    }
}
