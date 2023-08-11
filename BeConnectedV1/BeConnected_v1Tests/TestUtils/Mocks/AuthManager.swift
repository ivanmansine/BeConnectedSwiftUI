//
//  AuthManager.swift
//  BeConnected_v1Tests
//
//  Created by Manso García Iván on 9/8/23.
//

import Firebase

protocol AuthProtocol {
    func signIn(withEmail email: String, password: String, completion: ((AuthDataResult?, Error?) -> Void)?)
    func createUser(withEmail email: String, password: String, completion: ((AuthDataResult?, Error?) -> Void)?)
}

class AuthManager {
    private let auth: AuthProtocol
    
    init(auth: AuthProtocol = Auth.auth() as! AuthProtocol) {
        self.auth = auth
    }
    
    func signIn(withEmail email: String, password: String, completion: ((AuthDataResult?, Error?) -> Void)?) {
        auth.signIn(withEmail: email, password: password, completion: completion)
    }
    
    func createUser(withEmail email: String, password: String, completion: ((AuthDataResult?, Error?) -> Void)?) {
        auth.createUser(withEmail: email, password: password, completion: completion)
    }
}
