//
// © 2023 Manicek
//

import SwiftUI

struct RequiredTalentsView: View {
   let item: Item
   
   var body: some View {
       if item.craftingRequirements.talents.isEmpty {
           TextLeading(.empty)
       } else {
           VStack {
               ForEach(item.craftingRequirements.talents, id: \.self) { talent in
                   TextLeading(talent.name)
               }
           }
       }
   }
}
