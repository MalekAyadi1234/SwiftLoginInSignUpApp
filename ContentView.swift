//
//  ContentView.swift
//  Demo
//
//  Created by Mallouka on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongusername = 0
    @State private var wrongpassword = 0
    @State private var showingLoginPage = false

    
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                    TextField("Username",text: $username)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongusername))
                    
                    SecureField("Password",text: $password)
                        .padding()
                        .frame(width: 300 , height: 50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongpassword))
                    
                    Button("Login"){
                        authentificationUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300,height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                 
                    
                    NavigationLink(
                                            destination: HomeView(username: username),
                                            isActive: $showingLoginPage
                                        ) {
                                            EmptyView()
                                        }
                    NavigationLink(destination: SignUpView()) {
                                           Text("Dont have an account? Sign Up ")
                                               .foregroundColor(.white)
                                               .padding()
                                       }
                }
            }
            .navigationBarHidden(true)
        }
    }
    func authentificationUser(username:String,password:String){
        if username.lowercased()=="malek"{
            wrongusername = 0
            if password.lowercased()=="ayadi"{
                wrongpassword = 0
                showingLoginPage = true
            }else{
                wrongpassword = 2
                
            }
        }
        else{
            wrongusername = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
