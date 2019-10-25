//
//  SectionView.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-24.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritizedItems : ItemStore.PrioritizedItems
    var body: some View {
        Section(header: Text("\(prioritizedItems.priority.rawValue.capitalized) Priority")) {
            ForEach(prioritizedItems.items) { index in
                RowView(item: self.$prioritizedItems.items[index])
            }
            .onMove { sourceIndices, destinationIndex in
                self.prioritizedItems.items.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
            }
            .onDelete { indexSet in
                self.prioritizedItems.items.remove(atOffsets: indexSet)
            }
        }
    }
}

