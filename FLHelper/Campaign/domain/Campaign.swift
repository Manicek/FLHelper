//
// © 2023 Manicek
//

import Foundation

struct Campaign {
    let id = UUID()
    let name: String
    var playerCharacters: [PlayerCharacter]
    
    init(name: String, playerCharacters: [PlayerCharacter]) {
        self.name = name
        self.playerCharacters = playerCharacters
    }
}
