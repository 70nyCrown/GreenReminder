//
//  ListViewModel.swift
//  GreenReminder
//
//  Created by Антон Воронин on 18.07.2022.
//

import SwiftUI

class ReminderVM: ObservableObject {
    @Published private var model = ReminderModel.init(listItems: [ListItem(), ListItem()])
     
    var items: [ListItem] {
        model.listOfItems
    }
    
    func addItem(item: ListItem) {
        model.addItem(item: item)
    }
}
