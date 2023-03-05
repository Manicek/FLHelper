//
// © 2023 Manicek
//

import SwiftUI

struct OwnedAnimalView: View {
    @Binding var animal: Animal
    @Environment(\.isEditing) var isEditing
    var onAttributeChanged: (Attribute, Int) -> Void
    
    var body: some View {
        VStack {
            TextLeading(.animalRidingAnimal)
                .playerDetailSectionTitleFont()
            VStack {
                TextLeading(animal.name)
                    .playerDetailSectionSubtitleFont()
                HStack {
                    AttributesView(
                        showTitle: false,
                        max: animal.maxAttributes,
                        current: $animal.attributes,
                        onAttributeChanged: onAttributeChanged
                    ).environment(\.isEditing, isEditing)
                    Spacer()
                }
                InventoryView(showTitle: false, inventory: animal.inventory)
            }
        }
    }
}
