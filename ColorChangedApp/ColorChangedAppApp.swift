//
//  ColorChangedAppApp.swift
//  ColorChangedApp
//
//  Created by Карина on 23.10.2022.
//

import SwiftUI

@main
struct ColorChangedAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
