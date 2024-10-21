//
//  ContentView.swift
//  Authentication
//
//  Created by Bryce Wang on 10/17/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                TabView {
                    HomeView()
                        .tabItem() {
                            Image(systemName: "house")
                            Text("Home")
                        }
                    
                    ProfileView()
                        .tabItem() {
                            Image(systemName: "person.circle")
                            Text("Profile")
                        }
                }
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
