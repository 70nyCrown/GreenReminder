//
//  AppModel.swift
//  GreenReminder
//
//  Created by Антон Воронин on 17.07.2022.
//

import SwiftUI

struct ReminderModel {
    private(set) var listOfItems: [ListItem]
    
    init(listItems: [ListItem]) {
        self.listOfItems = listItems
    }
        
    mutating func addItem(item: ListItem) {
        listOfItems.append(item)
    }
}
