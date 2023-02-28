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
                AttributesView(max: player.maxAttributes, current: player.attributes)
                CriticalInjuriesView(injuries: player.injuries)
                SkillsView(skills: player.skills)
            }
            VStack {
                PlayerDescriptionView(player: player)
                ConditionsView(conditions: player.conditions)
                ConsumablesView(consumables: player.consumables)
                InventoryView(inventory: player.inventory)
                WillpowerView(willpower: player.willpower)
            }
            VStack {
                HStack {
                    OwnedAnimalView(animal: player.animal)
                    TalentsView(talents: player.talents)
                }
                HStack {
                    VStack {
                        ArmorView(
                            helmet: player.equippedItems.helmet,
                            bodyArmor: player.equippedItems.bodyArmor,
                            shield: player.equippedItems.shield
                        )
                        WeaponsView(
                            weapons: player.weapons,
                            mainHandWeapon: player.equippedItems.mainHandWeapon,
                            offHandWeapon: player.equippedItems.offHandWeapon
                        )
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
