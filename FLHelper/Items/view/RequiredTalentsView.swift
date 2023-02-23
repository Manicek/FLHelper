//
// © 2023 Manicek
//

import SwiftUI

struct RequiredTalentsView: View {
   let item: Item
   
   var body: some View {
       switch item.craftingRequirements.talents.count {
       case 0:
           Text(.empty)
       case 1:
           Text(item.craftingRequirements.talents[0].name)
       case 2:
           HStack(spacing: 0) {
               Text(item.craftingRequirements.talents[0].name)
               Text(", ")
               Text(item.craftingRequirements.talents[1].name)
           }
       default:
           HStack(spacing: 0) {
               Text(item.craftingRequirements.talents[0].name)
               Text(", ")
               Text(item.craftingRequirements.talents[1].name)
               Text(", ...")
           }
       }
   }
}
