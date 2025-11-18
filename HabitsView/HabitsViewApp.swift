//
//  HabitsViewApp.swift
//  HabitsView
//
//  Created by Pablo Mateos Corrales on 18/11/25.
//

import SwiftUI
import CoreData

@main
struct HabitsViewApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
