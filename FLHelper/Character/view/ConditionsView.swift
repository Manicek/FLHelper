//
// © 2023 Manicek
//

import SwiftUI

struct ConditionsView: View {
    @Environment(\.isEditing) var isEditing
    
    let conditions: [CharacterCondition: Bool]
    
    var onChangeCondition: (CharacterCondition) -> Void
    
    var body: some View {
        VStack {
            Text(.conditions)
                .playerDetailSectionTitleFont()
            HStack(spacing: 0) {
                ForEach(CharacterCondition.allCases, id: \.self) { condition in
                    ConditionView(
                        condition: condition, isActive: conditions[condition] == true, onChangeCondition: onChangeCondition
                    )
                }.environment(\.isEditing, isEditing)
            }
        }.fixedSize()
    }
}

// MARK: - ConditionView

private struct ConditionView: View {
    @Environment(\.isEditing) var isEditing
    
    let condition: CharacterCondition
    let isActive: Bool
    var onChangeCondition: (CharacterCondition) -> Void
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    if isEditing {
                        onChangeCondition(condition)
                    }
                } label: {
                    Image(condition.systemImageName)
                        .systemFontRegular(40)
                }
                Text(condition.name)
                    .playerDetailTextFont()
                    .frame(minWidth: 72)
            }
            .opacity(isActive ? 1 : 0.3)
        }
    }
}
