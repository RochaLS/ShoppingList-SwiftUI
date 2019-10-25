//
//  RowView.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-24.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import SwiftUI

struct RowView: View {
  @Binding  var item: Item
    
    let checkmark = Image(systemName: "checkmark")
    
    var body: some View {
        NavigationLink(destination: ItemEditingView(item: $item)) {
            if item.completed {
                checkmark
            } else {
                checkmark.hidden()
            }
            Text(item.itemName).strikethrough(item.completed)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(item: .constant(Item(itemName: "Buy something")))
    }
}
