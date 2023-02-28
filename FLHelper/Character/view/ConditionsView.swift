//
// © 2023 Manicek
//

import SwiftUI

struct ConditionsView: View {
    let conditions: [CharacterCondition: Bool]
    
    var body: some View {
        HStack(spacing: 4) {
            ConditionView(condition: .sleepy, isActive: conditions[.sleepy] == true)
            ConditionView(condition: .cold, isActive: conditions[.cold] == true)
            ConditionView(condition: .hungry, isActive: conditions[.hungry] == true)
            ConditionView(condition: .thirsty, isActive: conditions[.thirsty] == true)
        }
    }
}

// MARK: - ConditionView

private struct ConditionView: View {
    enum Constants {
        static let size: CGFloat = 84
    }
    
    let condition: CharacterCondition
    let isActive: Bool
    
    var body: some View {
        VStack {
            Image(condition.systemImageName)
                .font(.system(size: 40))
            Text(condition.name)
                .playerDetailTextFont()
        }
        .opacity(isActive ? 1 : 0.3)
        .frame(width: Constants.size, height: Constants.size)
    }
}
