//
//  BeConnected_v1App.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import SwiftUI
import FirebaseCore

@main
struct BeConnected_v1App: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
