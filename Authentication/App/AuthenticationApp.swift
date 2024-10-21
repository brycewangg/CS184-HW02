//
//  AuthenticationApp.swift
//  Authentication
//
//  Created by Bryce Wang on 10/17/24.
//

import SwiftUI
import Firebase

@main
struct AuthenticationApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
