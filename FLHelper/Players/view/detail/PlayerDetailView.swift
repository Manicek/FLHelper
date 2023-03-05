//
// © 2023 Manicek
//

import SwiftUI

struct PlayerDetailView: View {
    @StateObject var viewModel: PlayerDetailViewModel
    
    var body: some View {
        HStack {
            VStack {
                PlayerHeaderView(player: viewModel.player)
                Spacer()
                HStack {
                    AttributesView(
                        showTitle: true,
                        max: viewModel.player.maxAttributes,
                        current: $viewModel.player.attributes,
                        onAttributeChanged: viewModel.onPlayerAttributeChanged
                    ).environment(\.isEditing, viewModel.isEditing)
                    Spacer()
                }
                HStack {
                    SkillsView(skills: viewModel.player.skills) { skill in
                        viewModel.onIncreaseSkill(skill: skill)
                    }
                    .environment(\.isEditing, viewModel.isEditing)
                    .fixedSize()
                    Spacer()
                }
            }.fixedSize(horizontal: true, vertical: false)
            VStack {
                PlayerInfoView(player: viewModel.player)
                ConditionsView(conditions: viewModel.player.conditions)
                ConsumablesView(consumables: viewModel.player.inventory.consumables)
                CriticalInjuriesView(injuries: viewModel.player.injuries)
                Spacer()
                InventoryView(showTitle: true, inventory: viewModel.player.inventory)
                ArmorView(
                    helmet: viewModel.player.equippedItems.helmet,
                    bodyArmor: viewModel.player.equippedItems.bodyArmor,
                    shield: viewModel.player.equippedItems.shield
                )
                WeaponsView(
                    weapons: viewModel.player.weapons,
                    mainHandWeapon: viewModel.player.equippedItems.mainHandWeapon,
                    offHandWeapon: viewModel.player.equippedItems.offHandWeapon
                )
            }
            VStack {
                HStack {
                    CharacterDescriptionView(character: viewModel.player)
                    VStack {
                        HStack {
                            Spacer()
                            FLEditButton() {
                                viewModel.toggleEditMode()
                            }.environment(\.isEditing, viewModel.isEditing)
                        }
                        TalentsView(talents: viewModel.player.talents)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                Spacer()
                HStack {
                    VStack {
                        OwnedAnimalView(
                            animal: $viewModel.player.animal, onAttributeChanged: viewModel.onAnimalAttributeChanged
                        ).environment(\.isEditing, viewModel.isEditing)
                        Spacer()
                        WillpowerView(willpower: viewModel.player.willpower)
                    }
                    VStack {
                        Spacer()
                        ExperienceView(experience: viewModel.player.experience)
                        MoneyView(money: viewModel.player.inventory.money)
                    }
                }
            }
        }
        .overlay(content: {
            if let skill = viewModel.skillCausingExperienceWarning {
                FLAlertView(
                    title: .commonWarning,
                    description: .playerDetailNotEnoughExperience,
                    primaryButtonAction: AlertAction(
                        text: .commonOk,
                        style: .normal,
                        action: { viewModel.onAcceptNotEnoughExperience() }
                    ),
                    extraButtonActions: [
                        AlertAction(
                            text: .playerDetailIgnoreExperienceOnce,
                            style: .destructive,
                            action: { viewModel.onIgnoreExperienceForSkill(skill: skill) }
                        ),
                        AlertAction(
                            text: .playerDetailIgnoreExperienceForAll,
                            style: .destructive,
                            action: { viewModel.onIgnoreThisAndFutureExperienceRequirements(skill: skill, talent: nil) }
                        )
                    ]
                )
            }
        })
        .padding(12)
    }
}
