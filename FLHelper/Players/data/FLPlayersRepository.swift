//
// © 2023 Manicek
//

import Foundation

class FLPlayersRepository: PlayersRepository {
    
    func getPlayerCharacters() -> [PlayerCharacter] {
        getTestPlayerCharacters()
    }
    
    func getTestPlayerCharacters() -> [PlayerCharacter] {
        var mrTest = PlayerCharacter(
            name: "Mr Test",
            kin: .goblin,
            profession: .rider,
            age: 37,
            gender: .male,
            reputation: 1,
            attributes: [.strength: 2, .agility: 4, .wits: 2, .empathy: 5],
            skills: [.melee: 2, .crafting: 1],
            talents: [.pathOfTheKnight: 2, .chef: 1],
            inventory: Inventory(
                items: [
                    HelmetOption.closedHelmet.toArmor(),
                    ShieldOption.smallShield.toShield(),
                    MeleeWeaponOption.flail.toWeapon(),
                    RangedWeaponOption.lightCrossbow.toWeapon(),
                    ToolOption.saw.toTool(),
                    Goods.blanket.toGoodsItem()
                ],
                money: Money(copperCoins: 3, silverCoins: 2, goldCoins: 0),
                consumables: [.food: .d8, .water: .d8],
                encumbranceCapacity: 4
            ),
            injuries: [
                OtherWoundOption.pushedDamage.toCriticalInjury()
            ],
            animal: Animal(
                name: "Vlkos",
                age: 8,
                gender: .female,
                speed: 2,
                attributes: [.strength: 2, .agility: 3],
                maxAttributes: [.strength: 3, .agility: 3],
                skills: [.move: 2],
                talents: [:],
                inventory: Inventory(
                    items: [ToolOption.pickaxe.toTool()], money: .empty, consumables: [:], encumbranceCapacity: 4
                ),
                type: .wolf
            ),
            equippedItems: EquippedItems(
                helmet: HelmetOption.closedHelmet.toArmor(),
                shield: ShieldOption.smallShield.toShield(),
                mainHandWeapon: MeleeWeaponOption.flail.toWeapon()
            ),
            characterVisuals: CharacterVisuals(
                face: "Vysmátý, velké zelené oči",
                body: "Štíhlý, dlouhé paže",
                clothing: "Špinavá tmavě zelená lněná košile"
            ),
            willpower: 3,
            experience: 9,
            pride: "Nikdy nespadnu z vlka",
            darkSecret: "Zabil jsem svoji matku a svedl to na bratra"
        )
        mrTest.attributes[.strength] = 1
        mrTest.attributes[.agility] = 2
        mrTest.conditions[.hungry] = true
        return [mrTest]
    }
}
