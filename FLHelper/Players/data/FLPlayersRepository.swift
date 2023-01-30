//
// © 2023 Manicek
//

import Foundation

class FLPlayersRepository: PlayersRepository {
    
    func getPlayerCharacters() -> [PlayerCharacter] {
        getTestPlayerCharacters()
    }
    
    func getTestPlayerCharacters() -> [PlayerCharacter] {
        let mrTest = PlayerCharacter(
            name: "Mr Test",
            age: 37,
            gender: .male,
            attributes: [.strength: 2, .agility: 4, .wits: 2, .empathy: 5],
            skills: [.melee: 2, .crafting: 1],
            talents: [.pathOfTheKnight: 2, .chef: 1],
            inventory: [],
            kin: .goblin,
            profession: .rider,
            reputation: 1,
            money: 20,
            consumables: [.food: .d8, .water: .d8],
            animal: Animal(
                name: "Vlkos",
                type: .wolf,
                age: 8,
                gender: .female,
                speed: 2,
                attributes: [.strength: 2, .agility: 3],
                skills: [.move: 2],
                inventory: []
            ),
            willpower: 3,
            experience: 9,
            pride: "Nikdy nespadnu z vlka",
            darkSecret: "Zabil jsem svoji matku a svedl to na bratra"
        )
        mrTest.attributes[.strength] = 1
        mrTest.attributes[.agility] = 2
        mrTest.states[.hungry] = true
        return [mrTest]
    }
}
