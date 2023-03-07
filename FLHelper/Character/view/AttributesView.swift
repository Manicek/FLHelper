//
// © 2023 Manicek
//

import SwiftUI

struct AttributesView: View {
    @Environment(\.isEditing) var isEditing
    
    let showTitle: Bool
    let max: [Attribute: Int]
    @Binding var current: [Attribute: Int]
    
    var onAttributeChanged: (Attribute, Int) -> Void
    
    var usedAttributes: [Attribute] {
        Attribute.allCases.filter { attribute in
            max[attribute] != nil
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            if showTitle {
                Text(.attributes)
                    .playerDetailSectionTitleFont()
            }
            HStack {
                VStack(alignment: .leading) {
                    ForEach(usedAttributes, id: \.self) { attribute in
                        attributeNameView(attribute)
                    }
                }
                .fixedSize()
                VStack {
                    ForEach(usedAttributes, id: \.self) { attribute in
                        attributeValueView(attribute)
                    }
                }
                VStack {
                    ForEach(usedAttributes, id: \.self) { attribute in
                        attributeHeartsView(attribute)
                    }
                }.padding(.top, 6)
            }
        }.fixedSize()
    }
    
    private func attributeNameView(_ attribute: Attribute) -> some View {
        TextLeading(attribute.name)
            .playerDetailItemFont()
    }
    
    private func attributeValueView(_ attribute: Attribute) -> some View {
        Text("\(current[attribute] ?? 2)")
            .playerDetailItemFont()
            .padding(.horizontal, 4)
    }
    
    private func attributeHeartsView(_ attribute: Attribute) -> some View {
        HStack(alignment: .bottom, spacing: 0) {
            if isEditing {
                MinusButton {
                    onAttributeChanged(attribute, -1)
                }
            }
            ForEach((1...(max[attribute] ?? 2)), id: \.self) { value in
                Image(value <= (current[attribute] ?? 0) ? .heartFilled : .heart)
            }
            if isEditing {
                PlusButton {
                    onAttributeChanged(attribute, 1)
                }
            }
            Spacer()
        }
        .frame(maxHeight: .infinity)
    }
}
