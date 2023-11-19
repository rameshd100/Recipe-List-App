//
//  Recipe_List_App.swift
//  Recipe List App
//
//  Created by Ramesh  Dahal  on 11/18/23.
//

import SwiftUI

@main
struct Recipe_List_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            RecipeListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
