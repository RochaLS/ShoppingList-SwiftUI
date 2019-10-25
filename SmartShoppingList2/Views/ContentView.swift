//
//  ContentView.swift
//  SmartShoppingList2
//
//  Created by Lucas Rocha on 2019-10-21.
//  Copyright © 2019 Lucas Rocha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var itemStore: ItemStore
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(itemStore.prioritizedItems) { index in
                    SectionView(prioritizedItems: self.$itemStore.prioritizedItems[index])
                }
            }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Items")
        .navigationBarItems(
            leading: EditButton(),
            trailing: Button(action: {self.modalIsPresented = true}) {
                Image(systemName: "plus")
            }
            )
        }
        .sheet(isPresented: $modalIsPresented) {
            NewItemView(itemStore: self.itemStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(itemStore: ItemStore())
    }
}
