//
//  MockAuth.swift
//  BeConnected_v1Tests
//
//  Created by Manso García Iván on 9/8/23.
//
import Firebase

class MockAuth: AuthProtocol{
    
    var signInCalled = false
    var signUpCalled = false
    
    func signIn(withEmail email: String, password: String, completion: ((AuthDataResult?, Error?) -> Void)?) {
        signInCalled = true
    }
    
    func createUser(withEmail email: String, password: String, completion: ((AuthDataResult?, Error?) -> Void)?) {
        signUpCalled = true
    }
    
}
