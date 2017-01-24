//
//  ItemStore.swift
//  Homepwner
//
//  Created by Seab on 1/22/17.
//  Copyright © 2017 Seab Jackson. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        // get referenceto object being moved so you can reinsert it
        let movedItem = allItems[fromIndex]
        
        // insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
        
    }
}
































