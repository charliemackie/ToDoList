//
//  LoginView.swift
//  ToDoList
//
//  Created by Charlie Mackie on 2024-12-28.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
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
            ToDoListButton(title: "Login", background: .blue) {
                viewModel.login()
            }
            .padding(10)
        }
    }
}

#Preview {
    LoginView()
}
