//
//  Persistence.swift
//  Sesion06c
//
//  Created by DAMII on 3/12/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Sesion06c")
        container.loadPersistentStores {_, error in
            if let er = error as NSError? {
                fatalError("Error al conectarse a la BD, \(er)")
            }
        }
    }
}
