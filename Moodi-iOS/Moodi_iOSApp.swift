//
//  MyMood_iOSApp.swift
//  MyMood-iOS
//
//  Created by Pedro Gomes Rubbo Pacheco on 03/05/21.
//

import SwiftUI

@main
struct MyMood_iOSApp: App {
    @StateObject private var preferences: PreferencesStore = PreferencesStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(preferences)
        }
    }
}
