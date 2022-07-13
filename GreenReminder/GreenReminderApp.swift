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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
