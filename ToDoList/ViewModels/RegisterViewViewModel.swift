//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Charlie Mackie on 2024-12-28.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register() {
        print("register user")
        Auth.auth().createUser(withEmail: email, password: password) {
            result, error in guard let userId = result?.user.uid else {
                return
            }
            self.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        print("persist user in users collection")
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData([id: id, email: self.email])
    }
}
