//
//  LoginView.swift
//  BeConnected_v1
//
//  Created by Manso García Iván on 3/8/23.
//

import SwiftUI

struct LoginView: View{
    
    @State private var user = ""
    @State private var password = ""
//    @EnvironmentObject var rootViewModel: RootViewModel
    
    var body: some View{
        
        ZStack{
            //Fondo Login
            Image(decorative: "fondologin")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .colorInvert()
            VStack{
                //Textfield de User y Pass
                VStack{
                    TextField("Email", text: $user)
                        .foregroundColor(Color .white)
                        .padding(10)
                        .bold()
                        .background(.black)
                        .multilineTextAlignment(.center)
                        .cornerRadius(8)
                    Spacer()
                    
                    SecureField("Password", text: $password)
                        .padding(10)
                        .bold()
                        .background(.black)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                    
                }.frame(width: 280,height: 100)
                    .padding(40)
                //Button Login
                Spacer()
                
                Button{
                    //root
//                    rootViewModel.onLogin(user: "aaaa", password: "123456")
                }label:{
                    Text("Login")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.black)
                        .padding()
                        .frame(width: 120,height: 120)
                        .background(Color(uiColor: UIColor(red: 0/255, green: 130/255, blue: 0/255, alpha: 1)))
                        .cornerRadius(1000)
                        
                }
                
                
            }.frame(width: 600, height: 100)
        }
    }
}


struct LoginView_Preview: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}
