//
//  Keerthisapplication1App.swift
//  Keerthisapplication1

import SwiftUI

@main
struct Keerthisapplication1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            DashboardView()
        }
    }
}
