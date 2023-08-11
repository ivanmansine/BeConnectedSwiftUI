//
//  LoginViewTests.swift
//  BeConnected_v1Tests
//
//  Created by Manso García Iván on 9/8/23.
//

import XCTest
import SwiftUI
import Firebase
@testable import BeConnected_v1

class LoginViewTests: XCTestCase {
    
//Login
    func testSigningInCallsSignInWithEmail() {
            let mockAuth = MockAuth()
            let authManager = AuthManager(auth: mockAuth)
            
            authManager.signIn(withEmail: "test@example.com", password: "123456") { AuthResult, Error in
                XCTAssertTrue(mockAuth.signInCalled)
            }
        }
//Register
    func testSigningUpCallsSignUpWithEmail() {
        let mockAuth = MockAuth()
        let authManager = AuthManager(auth: mockAuth)
        
        authManager.createUser(withEmail: "test@example.com", password: "999999") { AuthResult, Error in
            //ir cambiando la pass y el mail para que no se repita, ya que daria error la BBDD por repeticion de mismo registro
            XCTAssertTrue(mockAuth.signUpCalled)
        }

    }
    

}
