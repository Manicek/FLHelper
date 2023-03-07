//
// © 2023 Manicek
//

import SwiftUI

struct ConsumablesView: View {
    @Environment(\.isEditing) var isEditing
    
    let consumables: [Consumable: Die]
    var onChangeConsumableDie: (Consumable, Direction) -> Void
    
    var body: some View {
        VStack {
            Text(.consumables)
                .playerDetailSectionTitleFont()
            HStack(spacing: 4) {
                ForEach(Consumable.allCases, id: \.self) { consumable in
                    ConsumableView(
                        consumable: consumable, die: consumables[consumable], onChangeConsumableDie: onChangeConsumableDie
                    ).environment(\.isEditing, isEditing)
                }
            }
        }.fixedSize()
    }
}

// MARK: - ConsumableView

private struct ConsumableView: View {
    @Environment(\.isEditing) var isEditing
    
    let consumable: Consumable
    let die: Die?
    var onChangeConsumableDie: (Consumable, Direction) -> Void
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                if isEditing {
                    MinusButton(size: 20) {
                        onChangeConsumableDie(consumable, .decrease)
                    }.padding(.leading, 4)
                }
                
                Image(die?.systemImageName ?? .square)
                    .systemFontRegular(40)
                
                if isEditing {
                    PlusButton(size: 20) {
                        onChangeConsumableDie(consumable, .increase)
                    }.padding(.trailing, 4)
                }
            }
            
            Text(consumable.name)
                .playerDetailTextFont()
                .frame(minWidth: 72)
        }
    }
}
