//
// © 2023 Manicek
//

import SwiftUI

struct WeaponsView: View {
    let weapons: [Weapon]
    let mainHandWeapon: Weapon?
    let offHandWeapon: Weapon?
    
    private let columns = [
        GridItem(.fixed(120), spacing: 0),
        GridItem(.fixed(80), spacing: 0),
        GridItem(.fixed(80), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            WeaponsHeaderView()
            ForEach(weapons) { weapon in
                WeaponRowView(weapon: weapon)
                    .frame(height: 40)
                    .background(
                        weapon == mainHandWeapon || weapon == offHandWeapon ? Color.tableRowBackground : Color.clear
                    )
            }
        }
    }
}

// MARK: - WeaponsHeaderView

private struct WeaponsHeaderView: View {
    var body: some View {
        TextLeading(.weaponHeaderWeapons)
        TextLeading(.weaponHeaderBonus)
        TextLeading(.weaponHeaderDamage)
        TextLeading(.weaponHeaderRange)
        TextLeading(.weaponHeaderComment)
    }
}

// MARK: - WeaponRowView

private struct WeaponRowView: View {
    let weapon: Weapon
    
    var body: some View {
        TextLeading(weapon.name)
        TextLeading("\(weapon.bonus)")
        TextLeading("\(weapon.damage)")
        TextLeading(weapon.range.name)
        TextLeading(.weaponHeaderComment)
    }
}
