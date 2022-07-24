//
//  ListViewModel.swift
//  GreenReminder
//
//  Created by Антон Воронин on 18.07.2022.
//

import SwiftUI

struct ReminderVM {
    
    var model: ReminderModel
    
    func addItem(item: ListItem) {
        model.addItem(item: item)
    }
    
    
    
}
