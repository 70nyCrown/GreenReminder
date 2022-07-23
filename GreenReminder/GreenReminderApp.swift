//
//  GreenReminderApp.swift
//  GreenReminder
//
//  Created by Антон Воронин on 13.07.2022.
//

import SwiftUI

@main
struct GreenReminderApp: App {
    
    let persistenceController = PersistenceController.shared
    
    let appModel = AppModel(listItems: [ListItem(daysToWater: 1, plantName: "default name", plantIcon: Image(systemName: "hand.point.left"), wateringValue: 140, chemicalsIcons: [Image("hand.point.right")])])
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
