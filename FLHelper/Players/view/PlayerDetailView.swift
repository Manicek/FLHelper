//
// © 2023 Manicek
//

import SwiftUI

struct PlayerDetailView: View {
    let player: PlayerCharacter
    
    var body: some View {
        HStack {
            VStack {
                PlayerHeaderView(player: player)
                HStack {
                    AttributesView(showTitle: true, max: player.maxAttributes, current: player.attributes)
                    Spacer()
                }
                CriticalInjuriesView(injuries: player.injuries)
                Spacer()
                HStack {
                    SkillsView(skills: player.skills)
                        .fixedSize()
                    Spacer()
                }
            }.fixedSize(horizontal: true, vertical: false)
            VStack {
                PlayerDescriptionView(player: player)
                ConditionsView(conditions: player.conditions)
                ConsumablesView(consumables: player.consumables)
                InventoryView(inventory: player.inventory)
                Spacer()
                WeaponsView(
                    weapons: player.weapons,
                    mainHandWeapon: player.equippedItems.mainHandWeapon,
                    offHandWeapon: player.equippedItems.offHandWeapon
                )
            }
            VStack {
                HStack {
                    OwnedAnimalView(animal: player.animal)
                    TalentsView(talents: player.talents)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer()
                HStack {
                    VStack {
                        ArmorView(
                            helmet: player.equippedItems.helmet,
                            bodyArmor: player.equippedItems.bodyArmor,
                            shield: player.equippedItems.shield
                        )
                        WillpowerView(willpower: player.willpower)
                    }
                    VStack {
                        ExperienceView(experience: player.experience)
                        MoneyView(money: player.money)
                    }
                }
            }
        }
        .padding(12)
    }
}
