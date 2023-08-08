//
//  LoginView.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import SwiftUI
import Firebase

struct LoginView: View{
    
    @State private var email = ""
    @State private var password = ""
    @State private var isSignIn = true
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var selection: Int? = nil
    
    
    var body: some View{
        NavigationView {
            
            ZStack{
                //Fondo Login
                Image(decorative: "fondologin")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .colorInvert()
                    .grayscale(1.0)
                VStack{
                    VStack{
                        TextField("Email", text: $email)
                            .foregroundColor(.black)
                            .padding(10)
                            .bold()
                            .border(Color.black, width: 5)
                            .background(.white)
                            .multilineTextAlignment(.center)
                        
                        
                        Spacer()
                        SecureField("Password", text: $password)
                            .padding(10)
                            .bold()
                            .border(Color.black, width: 5)
                            .background(.white)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.black)
                        
                        
                    }.frame(width: 280,height: 100)
                        .padding(40)
                    
                    Button(isSignIn ? " Iniciar sesion " : "Registrarse") {
                        if isSignIn{
                            signIn()
                        } else {
                            signUp()
                        }
                    }
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .overlay(Capsule(style: .continuous)
                        .stroke(Color.white,lineWidth: 5)
                    )
                    .background(.black)
                    .cornerRadius(40)
                    
                    Button(isSignIn ? "¿No tienes cuenta aun?" : "¿Ya tienes cuenta?") {
                        isSignIn.toggle()
                    }
                    .padding()
                    .foregroundColor(.white)
                    .overlay(Capsule(style: .continuous)
                        .stroke(Color.white,lineWidth: 5)
                    )
                    .background(.black)
                    .cornerRadius(40)
                    
                }.frame(width: 600,height: 100, alignment: .top)
                    .alert(isPresented: $showAlert){
                        Alert(title: Text("Error"),
                              message: Text(alertMessage),
                              dismissButton: .default(Text("OK")))
                    }
                    .background(
                        NavigationLink(
                            destination: HomeView(),
                            tag:1,
                            selection: $selection,
                            label: { EmptyView() })
                        )
                
            }
       }.navigationBarBackButtonHidden(true)
    }
    func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                alertMessage = error.localizedDescription
                showAlert = true
            } else {
                print("inicio de sesion correctamente")
                self.selection = 1
            }
        }
    }
    
    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                alertMessage = error.localizedDescription
                showAlert = true
            } else {
                self.selection = 1
            }
        }
    }
}


struct LoginView_Preview: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}
