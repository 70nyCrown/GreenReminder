//
//  ListViewModel.swift
//  GreenReminder
//
//  Created by Антон Воронин on 18.07.2022.
//

import SwiftUI

struct ListViewModel {
    
    var model: AppModel
    
    func addItem(item: ListItem) {
        model.addItem(item: item)
    }
    
    
    
}
