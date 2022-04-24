//
//  IndexAppApp.swift
//  Shared
//
//  Created by Herie Marie A. Estaño on 4/9/22.
//

import SwiftUI

@main
struct IndexAppApp: App {
    
    @StateObject var model: IndexModel = IndexModel()
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
