//
//  LoginView.swift
//  LoginView
//
//  Created by muhamad sholeh on 25/08/22.
//

import Foundation
import SwiftUI

struct LoginView: View{
    
    @State var username: String = ""
    @State var password: String = ""
    
    let lightGreyColor = Color(red: 240/255, green: 243/255, blue: 244/255, opacity: 1)
    
    
    var body: some View{
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    Image(systemName: "hexagon.fill")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    Text("Swift UI View")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Sign In")
                        .font(.title)
                }
                
                VStack(alignment: .leading){
                    Text("Username / email Address")
                    TextField("Username .. ", text: $username)
                        .padding()
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .background(lightGreyColor)
                    
                    Text("Password")
                    SecureField("Password .. ", text: $password)
                        .padding()
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .background(lightGreyColor)
                    
                    HStack{
                        Text("Forgot Password")
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        Button(action: {}){
                            Text("Sign In")
                                .bold()
                                .font(.callout)
                                .foregroundColor(Color.white)
                        }.padding()
                            .background(Color.blue)
                            .cornerRadius(50)
                        Spacer()
                            
                    }
                    
                    HStack{
                        Spacer()
                        Text("Our Privacy Policy")
                            .bold()
                            .font(.callout)
                            .foregroundColor(.blue)
                        Spacer()
                        
                    }.padding()
                    
                    HStack{
                        Text("Don't have an account?")
                            .bold()
                            .font(.callout)
                            .foregroundColor(.black)
                        Spacer()
                        Text("Sign Up")
                            .bold()
                            .font(.callout)
                            .foregroundColor(.blue)
                    }
                }.padding()
            }.padding(20)
        }
    }
}

struct LoginView_Previews: PreviewProvider{
    
    static var previews: some View{
        LoginView()
    }
}
