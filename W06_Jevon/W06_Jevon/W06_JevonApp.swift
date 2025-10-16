//
//  W06_JevonApp.swift
//  W06_Jevon
//
//  Created by student on 16/10/25.
//

import SwiftUI
import CoreData

@main
struct W06_JevonApp: App {
    let persistence = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            let vm = CoreDataStudentViewModel(context: persistence.container.viewContext)
            CoreDataStudentsView(vm:vm)
        }
    }
}
