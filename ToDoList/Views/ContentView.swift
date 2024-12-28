//
//  ContentView.swift
//  ToDoList
//
//  Created by Charlie Mackie on 2024-12-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // login
                LoginView()
                // register for new users
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Register here")
                        .foregroundColor(.orange)
                }
                .padding(20)
            }
        }
    }
}

#Preview {
    ContentView()
}
