//
// © 2023 Manicek
//

import SwiftUI

struct TalentsView: View {
    let talents: [Talent: Int]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(.talents)
                    .playerDetailSectionTitleFont()
                Spacer()
                Text(.characterRank)
                    .playerDetailSectionSubtitleFont()
            }
            Divider()
            
            ForEach(talents.keys.sorted(), id: \.self) { talent in
                HStack(alignment: .bottom, spacing: 0) {
                    Divider()
                    Text(talent.name)
                        .playerDetailItemFont()
                        .padding(.trailing, 8)
                    Spacer()
                    Divider()
                    if let value = talents[talent] {
                        Text("\(value)")
                            .playerDetailItemFont()
                            .padding(.horizontal, 8)
                            .frame(minWidth: 30, maxWidth: 30)
                    } else  {
                        Text("")
                            .padding(.horizontal, 8)
                            .frame(minWidth: 30, maxWidth: 30)
                    }
                    Divider()
                }.frame(maxWidth: .infinity)
                Divider()
            }
        }
    }
}
