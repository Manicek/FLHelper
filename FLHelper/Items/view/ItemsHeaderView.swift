//
// © 2023 Manicek
//

import SwiftUI

struct ItemsHeaderView: View {
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
