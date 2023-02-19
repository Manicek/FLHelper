//
// © 2023 Manicek
//

import SwiftUI

struct TalentsView: View {
    let talents: [Talent: Int]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(.talents)
                    .playerDetailSectionTitleFont()
                Spacer()
                Text(.characterRank)
                    .textCase(.uppercase)
                    .playerDetailSectionSubtitleFont()
            }
                        
            
            ForEach(talents.keys.sorted(), id: \.self) { talent in
                HStack(alignment: .bottom, spacing: 0) {
                    Text(talent.name)
                        .playerDetailItemFont()
                        .padding(.trailing, 8)
                    Spacer()
                    if let value = talents[talent] {
                        Text("\(value)")
                            .playerDetailItemFont()
                            .padding(.horizontal, 8)
                    }
                }.frame(maxWidth: .infinity)
            }
        }
    }
}
