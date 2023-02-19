//
// © 2023 Manicek
//

import SwiftUI

struct AttributesView: View {
    let max: [Attribute: Int]
    let current: [Attribute: Int]
    
    var body: some View {
        VStack(alignment: .center) {
            Text(.attributes)
                .playerDetailSectionTitleFont()
            HStack {
                VStack(alignment: .leading) {
                    ForEach(Attribute.allCases, id: \.self) { attribute in
                        attributeNameView(attribute)
                    }
                }
                .fixedSize()
                VStack {
                    ForEach(Attribute.allCases, id: \.self) { attribute in
                        attributeValueView(attribute)
                    }
                }
                VStack {
                    ForEach(Attribute.allCases, id: \.self) { attribute in
                        attributeHeartsView(attribute)
                    }
                }
            }
        }
    }
    
    private func attributeNameView(_ attribute: Attribute) -> some View {
        HStack {
            Text(attribute.name)
                .playerDetailItemFont()
            Spacer()
        }
    }
    
    private func attributeValueView(_ attribute: Attribute) -> some View {
        HStack {
            Text("\(current[attribute] ?? 2)")
                .playerDetailItemFont()
                .padding(.horizontal, 4)
        }
    }
    
    private func attributeHeartsView(_ attribute: Attribute) -> some View {
        HStack(alignment: .bottom, spacing: 0) {
            ForEach((1...(max[attribute] ?? 2)), id: \.self) { value in
                if value <= (current[attribute] ?? 0) {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }
            Spacer()
        }
        .frame(maxHeight: .infinity)
    }
}
