//
// © 2023 Manicek
//

import SwiftUI

struct OwnedAnimalView: View {
    @Binding var animal: Animal
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
                    )
                    Spacer()
                }
                InventoryView(showTitle: false, inventory: animal.inventory)
            }
        }
    }
}
