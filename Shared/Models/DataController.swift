//
//  DataController.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/14/22.
//

import Foundation
import SwiftUI
import CoreData



class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "ResultsModel")
    
    init() {
        container.loadPersistentStores { desc, error in
            
            if let error = error {
                print("Falied to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved. Yes!!!")
        } catch {
            print("We couldn't save the data :)")
        }
        
    }
    
//    func addResult(date: Date, total: String, message: String, context: NSManagedObjectContext) {
    func addResult(date: Date, total: Double, message: String, context: NSManagedObjectContext) {
        let result = Results(context: context)
        result.id = UUID()
        result.date = date
        result.finalResult = total
        result.message = message


        
        save(context: context)
    }
    
    func editDate(date: Date, context: NSManagedObjectContext) {
        let result = Results(context: context)
        result.date = Date()
        
        save(context: context)
    }
    
}
