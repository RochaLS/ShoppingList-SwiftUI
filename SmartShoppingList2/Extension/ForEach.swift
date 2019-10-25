//
//  ForEach.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-24.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import SwiftUI

public extension ForEach where Content: View {
  init<Base: RandomAccessCollection>(
    _ base: Base,
    @ViewBuilder content: @escaping (Base.Index) -> Content
  )
  where
    Data == IndexedCollection<Base>,
    Base.Element: Identifiable,
    ID == Base.Element.ID
  {
    self.init(IndexedCollection(base), id: \.element.id) {
      index, _ in content(index)
    }
  }
}
