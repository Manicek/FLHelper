//
// © 2023 Manicek
//

import SwiftUI

struct FLAlertView: View {
    let title: LocalizedStringKey
    let description: LocalizedStringKey?
    let primaryButtonAction: AlertAction
    let extraButtonActions: [AlertAction]
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black.opacity(0.6))
                .edgesIgnoringSafeArea(.all)
                .padding(-1400)
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .padding(-20)
                VStack {
                    Text(title)
                    if let description = description {
                        Text(description)
                    }
                    AlertButton(alertAction: primaryButtonAction)
                    ForEach(extraButtonActions) { alertAction in
                        AlertButton(alertAction: alertAction)
                    }
                }
            }
            .frame(minWidth: 300, minHeight: 300)
            .fixedSize()
        }
    }
}

// MARK: - AlertButton

private struct AlertButton: View {
    let alertAction: AlertAction
    
    var body: some View {
        Button(action: alertAction.action) {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(alertAction.style.color)
                Text(alertAction.text)
                    .font(alertAction.style.font)
                    .foregroundColor(alertAction.style.textColor)
            }
        }
    }
}
