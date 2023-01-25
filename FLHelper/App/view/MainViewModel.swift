//
// © 2023 Manicek
//

import Foundation

class MainViewModel: ObservableObject {
    @Published var campaigns: [Campaign] = []
    @Published var currentCampaign: Campaign?
    
    
}
