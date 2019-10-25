//
//  Task.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-22.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    var itemName: String
    var completed = false
}
