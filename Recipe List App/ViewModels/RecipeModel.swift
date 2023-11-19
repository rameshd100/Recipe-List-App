//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Ramesh  Dahal  on 11/19/23.
//

import Foundation


class RecipeModel: ObservableObject {
    
    // getting Recipe() data from models and assigning it to a variable and making it publishable.
    @Published var recieps = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        let service = DataService()
        self.recieps = service.getLocalData()
    }
    
    
}
