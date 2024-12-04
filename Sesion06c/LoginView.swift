//
//  LoginView.swift
//  Sesion06c
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

struct LoginView: View {
    @State private var correo = ""
    @State private var clave = ""
    @State private var isLoggedIn = false
    
    var body: some View {
        if isLoggedIn {
            TareaListaView()
        } else {
            VStack {
                CustomTextField(placeholder: "Correo", text: $correo)
                CustomTextField(placeholder: "Contrasena", text: $clave)
                    .textContentType(.password)
                    .keyboardType(.default)
                Button("Ingresar") {
                    isLoggedIn = true
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding()
            }
        }
    }
}