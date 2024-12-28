//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Charlie Mackie on 2024-12-28.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func login() {
        print("login user")
    }
    
    func validate() {
        
    }
}
