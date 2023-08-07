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
    
    var body: some View{
        NavigationView {
            
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
                            .foregroundColor(.black)
                            .padding(10)
                            .bold()
                            .border(Color.black)
                            .background(.white)
                            .multilineTextAlignment(.center)
                            
                        
                        Spacer()
                        SecureField("Password", text: $password)
                            .padding(10)
                            .bold()
                            .border(Color.black)
                            .background(.white)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.white)

                        
                    }.frame(width: 280,height: 100)
                        .padding(80)
                    //Button Login
                    
                    Spacer()
                    
                    NavigationLink(destination: HomeView()) {
                        Text("Login")
                            .font(.title)
                            .padding(25)
                            .foregroundColor(.black)
                            .background(Color(.systemGreen))
                            .cornerRadius(50)
                    }.frame(width: 200)
                }.frame(width: 600,height: 100, alignment: .top)
                    
                    //                    Button{
                    //                        //root
                    //                    }label:{
                    //                        Text("Login")
                    //                            .font(.title3)
                    //                            .bold()
                    //                            .foregroundStyle(.black)
                    //                            .padding()
                    //                            .frame(width: 120,height: 120)
                    //                            .background(Color(uiColor: UIColor(red: 0/255, green: 130/255, blue: 0/255, alpha: 1)))
                    //                            .cornerRadius(1000)
                    //                    }
                    //                }.frame(width: 600, height: 100)
                }
                
            }.navigationBarBackButtonHidden(true)
        }
    }
    
    
    struct LoginView_Preview: PreviewProvider{
        static var previews: some View{
            LoginView()
        }
    }
