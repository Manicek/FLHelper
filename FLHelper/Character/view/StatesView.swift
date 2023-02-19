//
// © 2023 Manicek
//

import SwiftUI

struct StatesView: View {
    let states: [CharacterState: Bool]
    
    var body: some View {
        VStack(spacing: 4) {
            HStack(spacing: 4) {
                StateView(state: .sleepy, isActive: states[.sleepy] == true)
                StateView(state: .cold, isActive: states[.cold] == true)
            }
            HStack(spacing: 4) {
                StateView(state: .hungry, isActive: states[.hungry] == true)
                StateView(state: .thirsty, isActive: states[.thirsty] == true)
            }
        }
    }
}

// MARK: - StateView

private struct StateView: View {
    enum Constants {
        static let size: CGFloat = 84
    }
    
    let state: CharacterState
    let isActive: Bool
    
    var body: some View {
        VStack {
            Image(systemName: state.systemImageName).font(.system(size: 40))
            Text(state.name).playerDetailTextFont()
        }
        .opacity(isActive ? 1 : 0.3)
        .frame(width: Constants.size, height: Constants.size)
    }
}
