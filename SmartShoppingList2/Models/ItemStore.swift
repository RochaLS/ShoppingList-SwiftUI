//
//  ItemStore.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-22.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import Combine

class ItemStore: ObservableObject {
    
    @Published var prioritizedItems = [PrioritizedItems(priority: .high, names: [
                                                                                 "Buy ice cream",
                                                                                 "Buy bananas"]),
                                       
                                       PrioritizedItems(priority: .medium, names: ["Buy bread",
                                                                                 "Buy toilet paper",
                                                                                 "Buy eggs",
                                                                                 "Buy ramen"]),
                                       
                                       PrioritizedItems(priority: .low, names: ["Buy textbook"]),
                                       
                                       PrioritizedItems(priority: .no, names: ["Buy computer"]),

                                       
                                       
        
    ]
    
    func getIndex(for priority: Item.Priority) -> Int {
        prioritizedItems.firstIndex { $0.priority == priority}!
    }
}

private extension ItemStore.PrioritizedItems {
    init(priority: Item.Priority, names: [String]) {
        self.init(priority: priority, items: names.map {Item(itemName: $0)})
    }
}

