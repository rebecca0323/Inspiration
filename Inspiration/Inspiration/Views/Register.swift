//
//  Register.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct Register: View {
    
    @ObservedObject var session: SessionStore
    @ObservedObject var viewRouter: ViewRouter
    
    @State var email: String = ""
    @State var password: String = ""
    @State var name: String = ""
    @State var group: String = ""
    
    var body: some View {
        ZStack(alignment: .top){
            Color(red: 1.0, green: 226/255, blue: 226/255).edgesIgnoringSafeArea(.all)
            VStack{
                Image("top").edgesIgnoringSafeArea(.top)
                Spacer()
                Image("bottom").edgesIgnoringSafeArea(.bottom)
            }.edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 46.0).padding(50).padding(.top, 70).padding(.bottom, 70)
                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
            .overlay(
                VStack{
                    Image("reg").padding()
                    //EMAIL
                    TextField("Email Address", text: $email).frame(width: 230, height: 20).padding()
                        .background(Color(red: 1.0, green: 226/255, blue: 226/255))
                        .cornerRadius(30)
                    //Password
                    SecureField("Password", text: $password).frame(width: 230, height: 20).padding()
                    .background(Color(red: 1.0, green: 226/255, blue: 226/255))
                    .cornerRadius(30)
                    
                    //Full name
                    TextField("Full Name", text: $name).frame(width: 230, height: 20).padding()
                    .background(Color(red: 1.0, green: 226/255, blue: 226/255))
                    .cornerRadius(30)
                    
                    Button(action: {
                        self.signUp()
                        }) {
                                Text("Register")
                                    .font(Font.custom("AvenirNext-Bold", size: 20))
                                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                    .padding(.horizontal, 20.0)
                                    .frame(width: 210.0, height: 54.0)
                            
                        }
                    .background(Color(red: 1.0, green: 155/255, blue: 155/255))
                        .cornerRadius(/*@START_MENU_TOKEN@*/27.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 4.0)
                }
            )
        }
    }
    
    //Sign up
    func signUp() {
        if !email.isEmpty && !password.isEmpty {
            session.signUp(email: email, password: password) { (result, error) in
                if error != nil {
                    print("Error")
                } else {
                    self.email = ""
                    self.password = ""
                    self.name = ""
                    self.group = ""
                    self.viewRouter.currentPage = "Home"
                }
            }
        }
    }
    
    
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register(session: SessionStore(), viewRouter: ViewRouter())
    }
}
