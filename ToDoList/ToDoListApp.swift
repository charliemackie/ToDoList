//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Charlie Mackie on 2024-12-28.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
