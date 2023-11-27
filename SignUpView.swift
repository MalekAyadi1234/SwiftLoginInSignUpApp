//
//  SignUpView.swift
//  Demo
//
//  Created by Mallouka on 11/25/23.
//

import SwiftUI




struct SignUpView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    @State private var city = ""
    @State private var showingSignUpPage = false


    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                VStack{
                    Text("SignUp")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                    
                    TextField("Email",text: $email)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    TextField("Username",text: $username)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    
                    SecureField("Password",text: $password)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    SecureField("Confirm Password",text: $confirmpassword)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)

                    
                    TextField("City",text: $city)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    Button("Create Account") {
                        showingSignUpPage = true
                                       }
                                       .foregroundColor(.white)
                                       .frame(width: 300, height: 50)
                                       .background(Color.blue)
                                       .cornerRadius(10)

                                       NavigationLink(
                                           destination: ContentView(),
                                           isActive: $showingSignUpPage
                                       ) {
                                           EmptyView()
                                       }
                    
                 
                    
                    
                 
                }
            }
            .navigationBarHidden(true)
        }
    
    }
}

struct LoggedInView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
