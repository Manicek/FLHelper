//
// © 2023 Manicek
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 32) {
                HStack {
                    Spacer()
                    NavigationLink(destination: SettingsView()) {
                        SettingsImageView()
                    }
                }
                
                HStack {
                    NavigationLink(destination: PlayersView(viewModel: PlayersViewModel())) {
                        MainViewLinkView(title: "Players")
                    }
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: "Places")
                    }
                }.frame(maxWidth: .infinity)
                
                HStack {
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: "Combat")
                    }
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: "Tables")
                    }
                }.frame(maxWidth: .infinity)
                
                HStack {
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: "Rolling")
                    }
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: "Talents")
                    }
                }.frame(maxWidth: .infinity)
                
                HStack {
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: "Encounters")
                    }
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: "NPCs")
                    }
                }.frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 44)
            .padding(.bottom, 32)
        }.navigationViewStyle(.stack)
    }
}
