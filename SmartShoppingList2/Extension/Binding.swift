//
//  Binding.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-24.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//


import SwiftUI
public extension Binding where Value: CaseIterable & Equatable {
  var caseIndex: Binding<Value.AllCases.Index> {
    Binding<Value.AllCases.Index>(
      get: { Value.allCases.firstIndex(of: self.wrappedValue)! },
      set: { self.wrappedValue = Value.allCases[$0] }
    )
  }
}
