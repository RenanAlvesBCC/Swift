//
//  ContentView.swift
//  IntroducaoSwiftUI
//
//  Created by Renan de Araujo Morais Alves on 27/04/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var mail: String = ""
    @State var pasword: String = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            HStack(spacing: 16) {
                VStack(alignment: .center) {
                    Text("Facebook")
                        .font(.title)
                        .bold()
                        .cornerRadius(4)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    VStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("Email:")
                                .font(.headline)
                                .foregroundColor(.white)
                            TextField("Enter e-mail", text: $mail)
                                .padding()
                                .background(.white)
                            Text("Password:")
                                .font(.headline)
                                .foregroundColor(.white)
                            TextField("Enter password", text: $pasword)
                                .padding()
                                .background(.white)
                                .keyboardType(.default)
                        }
                    }.padding(16)
                    Spacer()
                    VStack(alignment: .center) {
                        Button("Login") {
                            //Make Login
                        }
                        .padding()
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(16)
                        
                        Button("Forgot Password") {
                            //Make Forgot Password
                        }
                        .foregroundColor(.black)
                        .textFieldStyle(.automatic)
                        .padding()
                    }.padding(16)
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
