//
//  Sesion06cApp.swift
//  Sesion06c
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

@main
struct Sesion06cApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
