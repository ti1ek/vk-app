//
//  ContentView.swift
//  VK
//
//  Created by Tilek Koszhanov on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
            VStack {
                Image("vk")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.top, 90)
                Text("Вход ВКонтакте")
                    .font(.system(size: 24))
                    .bold()
                    .padding(.top, 20)
                TextField("Телефон или почта", text: $login)
                    .frame(maxWidth: 350)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Введите пароль", text: $password)
                    .frame(maxWidth: 350)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: { print("pressed") }) {
                    Text("Войти")
                        .frame(width: 327)
                        .font(.system(size: 18))
                        .bold()
                } .buttonStyle(.borderedProminent)
                    .padding(.top, 10)
                    .disabled(login.isEmpty || password.isEmpty)
                Spacer()
                Button(action: { print("pressed") }) {
                    Text("Зарегистрироваться")
                        .frame(width: 327)
                        .font(.system(size: 18))
                        .bold()
                }.buttonStyle(.borderedProminent)
                    .tint(.green)
                    .padding(.bottom, 15)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
