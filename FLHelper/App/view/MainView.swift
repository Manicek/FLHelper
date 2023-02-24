//
// © 2023 Manicek
//

import SwiftUI

struct MainView: View {
    enum Constants {
        static let settingsLinkSize: CGFloat = 60
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 32) {
                HStack {
                    Spacer()
                    NavigationLink(destination: SettingsView()) {
                        Image(.gearShapeFilled)
                            .font(.system(size: Constants.settingsLinkSize))
                        .frame(width: Constants.settingsLinkSize, height: Constants.settingsLinkSize)
                    }
                }
                
                HStack {
                    NavigationLink(destination: PlayersView(viewModel: PlayersViewModel())) {
                        MainViewLinkView(title: .mainViewTitlePlayers)
                    }
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: .mainViewTitlePlaces)
                    }
                }.frame(maxWidth: .infinity)
                
                HStack {
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: .mainViewTitleCombat)
                    }
                    NavigationLink(destination: TablesView()) {
                        MainViewLinkView(title: .mainViewTitleTables)
                    }
                }.frame(maxWidth: .infinity)
                
                HStack {
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: .mainViewTitleRolling)
                    }
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: .mainViewTitleTalents)
                    }
                }.frame(maxWidth: .infinity)
                
                HStack {
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: .mainViewTitleEncounters)
                    }
                    NavigationLink(destination: EmptyView()) {
                        MainViewLinkView(title: .mainViewTitleNPCs)
                    }
                }.frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 44)
            .padding(.bottom, 32)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .navigationViewStyle(.stack)
    }
}
