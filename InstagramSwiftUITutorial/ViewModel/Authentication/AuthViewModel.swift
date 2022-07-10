//
//  AuthViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/07/09.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: Firebase.User?
    
    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
    }
    func login() {
        print("Login")
        
    }

    func register( email: String, password: String) {
        print(email)
        print(password)
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("Successfully registered user...")
                
        }
        
    }

    func signout() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword() {
         
    }

    func fetchUser() {
        
    }

}