//
// © 2023 Manicek
//

import SwiftUI

struct ItemsHeaderView: View {
    let itemType: ItemType
    
    var body: some View {
        switch itemType {
        case .meleeWeapon, .rangedWeapon:
            TextLeading(.itemHeaderWeapon)
            CommonHeadersView()
        case .tool:
            TextLeading(.itemHeaderTools)
            CommonHeadersView()
        case .shield, .bodyArmor, .helmet, .goods, .miscellaneous:
            TextLeading(.itemHeaderItem)
            CommonHeadersView()
            TextLeading(.itemHeaderEffect)
        }
    }
}

// MARK: - CommonHeadersView

private struct CommonHeadersView: View {
    var body: some View {
        TextLeading(.itemHeaderPrice)
        TextLeading(.itemHeaderSupply)
        TextLeading(.itemHeaderWeight)
        TextLeading(.itemHeaderRawMaterials)
        TextLeading(.itemHeaderTime)
        TextLeading(.itemHeaderTalent)
        TextLeading(.itemHeaderTools)
    }
}
