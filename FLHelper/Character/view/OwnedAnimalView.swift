//
// © 2023 Manicek
//

import SwiftUI

struct OwnedAnimalView: View {
    let animal: Animal?
    
    var body: some View {
        VStack {
            TextLeading(.animalRidingAnimal)
                .playerDetailSectionTitleFont()
            if let animal = animal {
                VStack {
                    TextLeading(animal.name)
                            .playerDetailSectionSubtitleFont()
                    HStack {
                        AttributesView(showTitle: false, max: animal.maxAttributes, current: animal.attributes)
                        Spacer()
                    }
                    
                }
            }
        }
    }
}
