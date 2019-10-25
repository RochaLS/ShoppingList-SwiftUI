//
//  NewItemView.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-22.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import SwiftUI

struct NewItemView: View {
    
    var itemStore: ItemStore
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var itemName = ""
    @State var priority: Item.Priority = .no
    
    var body: some View {
        Form {
            TextField("Item name", text: $itemName)
            
            
            VStack {
                Text("Priority")
                Picker("Priority", selection: $priority.caseIndex) {
                    ForEach(Item.Priority.allCases.indices) { priorityIndex in
                        Text(Item.Priority.allCases[priorityIndex].rawValue.capitalized).tag(priorityIndex)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            Button("Add") {
                let priorityIndex = self.itemStore.getIndex(for: self.priority)
                self.itemStore.prioritizedItems[priorityIndex].items.append(Item(itemName: self.itemName))
                self.presentationMode.wrappedValue.dismiss()
                
            }.disabled(itemName.isEmpty)
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(itemStore: ItemStore())
    }
}
