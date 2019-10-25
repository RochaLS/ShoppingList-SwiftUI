//
//  ItemStore.PrioritizedItems.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-24.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

extension ItemStore {
    struct PrioritizedItems {
        let priority: Item.Priority
        var items: [Item]
    }
}

extension ItemStore.PrioritizedItems: Identifiable {
    var id: Item.Priority { priority }
}
