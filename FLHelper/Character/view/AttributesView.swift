//
// © 2023 Manicek
//

import SwiftUI

struct AttributesView: View {
    let showTitle: Bool
    let max: [Attribute: Int]
    let current: [Attribute: Int]
    
    var usedAttributes: [Attribute] {
        Attribute.allCases.filter { attribute in
            max[attribute] != nil
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            if showTitle {
                TextLeading(.attributes)
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
            ForEach((1...(max[attribute] ?? 2)), id: \.self) { value in
                Image(value <= (current[attribute] ?? 0) ? .heartFilled : .heart)
            }
            Spacer()
        }
        .frame(maxHeight: .infinity)
    }
}
