//
//  RegisterView.swift
//  ToDoList
//
//  Created by Charlie Mackie on 2024-12-28.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        Form {
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .textInputAutocapitalization(.none)
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .textInputAutocapitalization(.none)
            ToDoListButton(title: "Register", background: .orange) {
                viewModel.register()
            }
            .padding(10)
        }
    }
}

#Preview {
    RegisterView()
}
