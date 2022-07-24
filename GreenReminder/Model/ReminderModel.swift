//
//  AppModel.swift
//  GreenReminder
//
//  Created by Антон Воронин on 17.07.2022.
//

import SwiftUI

class ReminderModel {
    
    var listItems: [ListItem]
    
    private let iconArray = [Image(systemName: "hand.thumbdown"),
                             Image(systemName: "hand.point.up"),
                             Image(systemName: "hand.point.up.left"),
                             Image(systemName: "hand.draw"),
                             Image(systemName: "hand.tap"),
                             Image(systemName: "hand.point.right"),
                             Image(systemName: "hand.point.up.braille"),
                             Image(systemName: "hand.point.down")
    ]
    
    init(listItems: [ListItem]) {
        self.listItems = listItems
    }
    
    func addItem(item: ListItem) {
        listItems.append(item)
    }
    
}
