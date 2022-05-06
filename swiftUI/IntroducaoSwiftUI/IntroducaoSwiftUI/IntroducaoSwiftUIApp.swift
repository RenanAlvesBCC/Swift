//
//  IntroducaoSwiftUIApp.swift
//  IntroducaoSwiftUI
//
//  Created by Renan de Araujo Morais Alves on 27/04/22.
//

import SwiftUI

@main
struct IntroducaoSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
