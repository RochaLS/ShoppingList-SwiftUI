//
//  ItemEditingView.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-24.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import SwiftUI

struct ItemEditingView: View {
    @Binding var item: Item
    var body: some View {
        Form {
            TextField("Name", text: $item.itemName)
            Toggle("Completed", isOn: $item.completed)
        }
    }
}

struct ItemEditingView_Previews: PreviewProvider {
    static var previews: some View {
        ItemEditingView(item: .constant(Item(itemName: "Buy Something")))
    }
}
