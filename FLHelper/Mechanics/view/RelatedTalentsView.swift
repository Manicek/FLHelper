//
// © 2023 Manicek
//

import SwiftUI

struct RelatedTalentsView: View {
    let option: RollingOption
    
    var body: some View {
        if option.relatedTalents.isEmpty {
            TextLeading(.empty)
        } else {
            VStack {
                ForEach(option.relatedTalents, id: \.self) { talent in
                    TextLeading(talent.name)
                }
            }
        }
    }
}
