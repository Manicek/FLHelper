//
// © 2023 Manicek
//

import SwiftUI

class PlayerDetailViewModel: ObservableObject {
    @Published var player: PlayerCharacter
    @Published var isEditing: Bool = false
    
    init(player: PlayerCharacter) {
        self.player = player
    }
    
    func toggleEditMode() {
        isEditing.toggle()
    }
    
    func onPlayerAttributeChanged(attribute: Attribute, change: Int) {
        if let current = player.attributes[attribute], let maximum = player.maxAttributes[attribute] {
            player.attributes[attribute] = min(max(0, current + change), maximum)
        }
    }
    
    func onAnimalAttributeChanged(attribute: Attribute, change: Int) {
        if let current = player.animal.attributes[attribute], let maximum = player.animal.maxAttributes[attribute] {
            player.animal.attributes[attribute] = min(max(0, current + change), maximum)
        }
    }
}
