//
//  Recipe_List_AppApp.swift
//  Recipe List App
//
//  Created by Ramesh  Dahal  on 11/18/23.
//

import SwiftUI

@main
struct Recipe_List_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
