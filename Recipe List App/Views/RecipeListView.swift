//
//  ContentView.swift
//  Recipe List App
//
//  Created by Ramesh  Dahal  on 11/18/23.
//

import SwiftUI
import CoreData

struct RecipeListView:View {
    
    //Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recieps) { recip in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: recip),
                    label: {
                        
                        // MARK: Row item
                        HStack(spacing: 20.0) {
                            Image(recip.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            
                            
                            Text(recip.name)
                        }
                    })
                
                
            }
        }
        .navigationTitle("All Recipes")
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
