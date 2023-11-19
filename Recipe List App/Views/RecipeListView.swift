//
//  ContentView.swift
//  Recipe List App
//
//  Created by Ramesh  Dahal  on 11/18/23.
//

import SwiftUI
import CoreData

struct RecipeListView:View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
    RecipeListView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
